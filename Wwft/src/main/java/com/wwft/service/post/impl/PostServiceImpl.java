package com.wwft.service.post.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.wwft.service.domain.Post;
import com.wwft.service.post.PostDao;
import com.wwft.service.post.PostService;

public class PostServiceImpl implements PostService {

	@Autowired
	@Qualifier("postDaoImpl")
	private PostDao postDao;
	
	public PostServiceImpl() {
		System.out.println(this.getClass());
	}

	@Override
	public void addPost(Post post) throws Exception {
		postDao.addPost(post);
		
	}

	@Override
	public Post getPost(int postNo) throws Exception {
		return postDao.getPost(postNo);
	}

	@Override
	public void updatePost(Post post) throws Exception {
		postDao.updatePost(post);
	}

	@Override
	public int removePost(int postNo) throws Exception {
		return postDao.removePost(postNo);
	}

}
