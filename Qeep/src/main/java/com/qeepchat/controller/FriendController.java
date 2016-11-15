package com.qeepchat.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


import com.qeepchat.model.Friend;

import com.qeepchat.service.FriendService;

@RestController
public class FriendController {
 @Autowired(required=true)
 FriendService friendService;
 @Autowired(required=true)
 Friend friend;
 
 @RequestMapping(value="/myFriends", method = RequestMethod.GET)
 public ResponseEntity<List<Friend>> getMyFriends(HttpSession session){
	 int loggedInUserId=(Integer) session.getAttribute("loggedInUserId");
	 System.out.println("loggedInUserId is="+loggedInUserId);
	 List<Friend> myFriends = friendService.getMyFriends(loggedInUserId);
	 return new ResponseEntity<List<Friend>> (myFriends, HttpStatus.OK);
 }
 @RequestMapping(value="/addFriend/{friendId}", method = RequestMethod.GET)
 public ResponseEntity<Friend> sendFriendRequest(@PathVariable("friendId") int friendId,HttpSession session){
	 int loggedInUserId=(Integer) session.getAttribute("loggedInUserId");
	 friend.setId(loggedInUserId);
	 friend.setFriendId(friendId);
	 friend.setStatus("N");
	 friend.setIsOnline('Y');
	 friendService.save(friend);
	 return new ResponseEntity<Friend>(friend, HttpStatus.OK);
	 
}
 @RequestMapping(value="/unFriend/{f_Id}", method = RequestMethod.GET)
 public ResponseEntity<Friend> unFriend(@PathVariable("f_Id") int friendId,HttpSession session){
	 int loggedInUserId=(Integer) session.getAttribute("loggedInUserId");
	 friend.setId(loggedInUserId);
	 System.out.println("loggedInUserId is="+loggedInUserId);
	 
	 friend.setFriendId(friendId);
	 System.out.println("friendId is="+friendId);
	 friend.setStatus("U");
	
	 friendService.update(friend);
	 return new ResponseEntity<Friend>(friend, HttpStatus.OK);
	 
}
 @RequestMapping(value="/rejectFriend/{f_Id}", method = RequestMethod.GET)
 public ResponseEntity<Friend> rejectFriendRequest(@PathVariable("friendId") int friendId,HttpSession session){
	 int loggedInUserId=(Integer) session.getAttribute("loggedInUser");
	 friend.setId(loggedInUserId);
	 
	 friend.setFriendId(friendId);
	 
	 friend.setStatus("R");
	 friendService.update(friend);
	 return new ResponseEntity<Friend>(friend, HttpStatus.OK);
	 
} 
 @RequestMapping(value="/getMyFriendRequests", method = RequestMethod.GET)
 public ResponseEntity<List<Friend>> getMyFriendRequests(HttpSession session){
	 int loggedInUser=(Integer) session.getAttribute("loggedInUser");
	 List<Friend> myFriendRequests =friendService.getNewFriendRequests(loggedInUser);
	 return new ResponseEntity<List<Friend>>(myFriendRequests, HttpStatus.OK);
	 
} 
 @RequestMapping(value="/acceptFriend/{friendId}", method = RequestMethod.GET)
 public ResponseEntity<Friend> acceptFriendRequest(@PathVariable("friendId") int friendId,HttpSession session){
	
	 int loggedInUserId=(Integer) session.getAttribute("loggedInUser");
	 friend.setId(loggedInUserId);
	 friend.setFriendId(friendId);
	 friend.setStatus("A");
	 friendService.update(friend);
	 return new ResponseEntity<Friend>(friend, HttpStatus.OK);
	 
	 
}
public void updateRequest(int f_Id, String status, HttpSession session)
	{
		int loggedInUserId =(Integer)session.getAttribute("loggedInUserId");
		friend.setId(loggedInUserId);
		friend.setF_Id(f_Id);
		friend.setStatus(status);	// N - New, R->Reject, A->Accept
		friendService.update(friend);
		
		
	}


}