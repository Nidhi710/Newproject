package com.qeepchat.dao;

import java.util.List;

import com.qeepchat.model.BlogComment;

public interface BlogCommentDAO {

	void saveOrUpdateBlogComment(BlogComment blogComment);

	void deleteBlogComment(int blogCommentId);

	BlogComment getBlogComment(int blogCommentId);

	List<BlogComment> listBlogComments();
	
	List<BlogComment> listBlogByCreatedAt(int c_id);
}
