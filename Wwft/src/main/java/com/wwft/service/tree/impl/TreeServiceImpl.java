package com.wwft.service.tree.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.wwft.service.domain.Tree;
import com.wwft.service.tree.TreeDao;
import com.wwft.service.tree.TreeService;

@Service("treeServiceImpl")
public class TreeServiceImpl implements TreeService {

	@Autowired
	@Qualifier("treeDaoImpl")
	private TreeDao treeDao;
	public void setTreeDao(TreeDao treeDao) {
		this.treeDao = treeDao;
	}
	
	
	public TreeServiceImpl() {
		
		System.out.println("::"+getClass()+"default Constructor Call..");
	}

	@Override
	public void addBucketList(Tree tree) throws Exception {
		treeDao.addBucketList(tree);
		
	}

	@Override
	public void addFamilyMotto(Tree tree) throws Exception {
		treeDao.addFamilyMotto(tree);
		
	}
	
	

}
