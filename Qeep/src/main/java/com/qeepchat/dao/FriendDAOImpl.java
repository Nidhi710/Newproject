package com.qeepchat.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qeepchat.model.Friend;
@Repository
public class FriendDAOImpl implements FriendDAO {
	@Autowired(required=true)
	private SessionFactory sessionFactory;
	
	public FriendDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public List<Friend> getMyFriends(int id) {
		String hql ="from Friend where id='"+id+"'  and status='"+"A'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Friend> list= (List<Friend>) query.list();
		return list;
	}

	public Friend get(int id, int friendId) {
		String hql ="from Friend where id='"+id+"' and friendId='"+friendId+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Friend> list = (List<Friend>) query.list();
		if(list!=null && !list.isEmpty()){
			return list.get(0);
		}
		return null;
	}

	public boolean save(Friend friend) {
		sessionFactory.getCurrentSession().save(friend);
		return false;
	}

	public void update(Friend friend) {
		sessionFactory.getCurrentSession().update(friend);
		
	}

	public void delete(int id, int friendId) {
		Friend FriendToDelete = new Friend();
		FriendToDelete.setId(id);
		FriendToDelete.setFriendId(friendId);
		sessionFactory.getCurrentSession().delete(FriendToDelete);
		
	}

	public List<Friend> getNewFriendRequests(int id) {
		String hql ="from Friends where id="+"'"+id+"' and status='"+"N'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Friend> list= (List<Friend>) query.list();
		return list;
	}

	public void setOnline(int id) {
		String hql ="UPDATE Friend SET isOnline='Y' where id='"+id+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.executeUpdate();
	}

	public void setOffline(int id) {
		String hql ="UPDATE Friend SET isOnline='N' where id='"+id+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.executeUpdate();
		
	}
	
	 

}
