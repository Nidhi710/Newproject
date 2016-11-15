package com.qeepchat.dao;

import java.util.List;

import com.qeepchat.model.Friend;

public interface FriendDAO {
 public List<Friend> getMyFriends(int id);
 public Friend get(int id, int friendId);
 public boolean save(Friend friend);
 public void update(Friend friend);
 public void delete(int id,int friendId);
 public List<Friend> getNewFriendRequests(int id);
 public void setOnline(int id);
 public void setOffline(int id);
}
