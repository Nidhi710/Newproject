package com.qeepchat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qeepchat.dao.FriendDAOImpl;
import com.qeepchat.model.Friend;

@Service
@Transactional
public class FriendService {
	@Autowired(required=true)
	FriendDAOImpl friendDAO;
	
	public boolean save(Friend friend) {
		friendDAO.save(friend);
		return true;
	}
	public void update(Friend friend){
		friendDAO.update(friend);
		
	}
	
	public void delete(int id,int friendId){
		friendDAO.delete(id, friendId);
	}
	public List<Friend> getNewFriendRequests(int id){
		return friendDAO.getNewFriendRequests(id);
	}
	 public void setOnline(int id){
		 friendDAO.setOnline(id);
	 }
	 public void setOffline(int id){
		 friendDAO.setOffline(id);
	 }
	 public List<Friend> getMyFriends(int id){
		 return friendDAO.getMyFriends(id);
	 }
}
