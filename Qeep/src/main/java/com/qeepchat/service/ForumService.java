package com.qeepchat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import com.qeepchat.dao.ForumDAOImpl;
import com.qeepchat.model.Forum;

public class ForumService {
	@Autowired(required=true)
	ForumDAOImpl forumDAO;
	
	
public boolean add(Forum forum){
	     forumDAO.add(forum);
         return true; 
}

public void update(Forum forum){
	forumDAO.update(forum);
}

public List<Forum> listForum(){
	return forumDAO.listForum();
}

public void delete(int forumId) {
	forumDAO.delete(forumId);
	
}
public Forum getForumById(int forumId){
	return forumDAO.getForumById(forumId); 
	
}
}
