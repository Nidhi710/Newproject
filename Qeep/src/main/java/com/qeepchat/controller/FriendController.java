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
 
 @RequestMapping(value="/myFriends", method = RequestMethod.GET )
	public ResponseEntity<List<Friend>> getMyFriends(HttpSession session) {
		
		 int loggedInUserId =(Integer)session.getAttribute("loggedInUserId");
		System.out.println("loggedInUserId is="+loggedInUserId);
		List<Friend> myFriends= friendService.getMyFriends(loggedInUserId);
		return new ResponseEntity<List<Friend>>(myFriends, HttpStatus.OK);
	}
	
	@RequestMapping(value="/addFriend/{friendId}", method = RequestMethod.GET )
	public ResponseEntity<Friend>  setFriendRequest(@PathVariable("friendId") int friendId,HttpSession session ) {
		 int loggedInUserId =(Integer)session.getAttribute("loggedInUserId");
		friend.setId(loggedInUserId);
		friend.setFriendId(friendId);
		friend.setStatus("N"); // N - New, R->Reject, A->Accept
	    friend.setIsOnline('Y');
		friendService.save(friend);
		return new ResponseEntity<Friend> (friend,HttpStatus.OK);
	}
	
	@RequestMapping(value="/unFriend/{friendId}", method = RequestMethod.GET )
	public ResponseEntity<Friend> unFriend(@PathVariable("friendId") int friendId,HttpSession session ) {
		 int loggedInUserId =(Integer)session.getAttribute("loggedInUserId");
		friend.setId(loggedInUserId);
		System.out.println("loggedInUserId is"+loggedInUserId);
		friend.setFriendId(friendId);
		
		System.out.println("FriendId is="+friendId);
		friend.setStatus("U");  // N - New, R->Reject, A->Accept
		
		friend.setIsOnline('Y');
		friendService.update(friend);
		return new ResponseEntity<Friend> (friend,HttpStatus.OK);
	}
	@RequestMapping(value="/rejectFriend/{friendId}", method = RequestMethod.GET )
	public ResponseEntity<Friend>  rejectFriendRequest(@PathVariable("friendId") int friendId,HttpSession session ) {
		 int loggedInUserId =(Integer)session.getAttribute("loggedInUserId");
		friend.setId(loggedInUserId);
		
		friend.setFriendId(friendId);
		friend.setStatus("R"); // N - New, R->Reject, A->Accept
		friendService.update(friend);
		return new ResponseEntity<Friend> (friend,HttpStatus.OK);
	}
	@RequestMapping(value="/getMyFriendRequest/", method = RequestMethod.GET )
	public ResponseEntity<Friend>  getMyFriendRequest(HttpSession session ) {
		 int loggedInUserId =(Integer)session.getAttribute("loggedInUserId");
		List<Friend> myFriendRequests=friendService.getNewFriendRequests(loggedInUserId);
		return new ResponseEntity<Friend> (friend,HttpStatus.OK);
	}
	@RequestMapping(value="/acceptFriend/{friendId}", method = RequestMethod.GET )
	public ResponseEntity<Friend> acceptFriendRequest(@PathVariable("friendId") int friendId,HttpSession session ) {
		updateRequest(friendId, "A", session);
		return new ResponseEntity<Friend> (friend,HttpStatus.OK);
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