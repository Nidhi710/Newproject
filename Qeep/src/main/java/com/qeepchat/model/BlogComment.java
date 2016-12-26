package com.qeepchat.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
@Entity
public class BlogComment {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int blogCommentId;
	private int id; //user id
	private String blogCommentContent;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "c_id", nullable = false)
	Blog blog;
	
	public int getBlogCommentId() {
		return blogCommentId;
	}
	public void setBlogCommentId(int blogCommentId) {
		this.blogCommentId = blogCommentId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBlogCommentContent() {
		return blogCommentContent;
	}
	public void setBlogCommentContent(String blogCommentContent) {
		this.blogCommentContent = blogCommentContent;
	}
	public Blog getBlog() {
		return blog;
	}
	public void setBlog(Blog blog) {
		this.blog = blog;
	}
	
	
	
}
