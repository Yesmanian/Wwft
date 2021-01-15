package com.wwft.service.tree.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.wwft.service.domain.Calender;
import com.wwft.service.domain.Forest;
import com.wwft.service.domain.Profile;
import com.wwft.service.domain.Tree;
import com.wwft.service.tree.TreeDao;

@Repository("treeDaoImpl")
public class TreeDaoImpl implements TreeDao {

	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		System.out.println("::"+getClass()+".sqlSession() Call..");
		this.sqlSession = sqlSession;
	}
	
	
	public TreeDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public Tree getTree(int treeNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Profile> getProfileIntroduce() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Tree getTreeRanking(int treeNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Tree getWorldTreeRanking(int treeNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Tree getNationTreeRanking(int treeNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Forest> getForestList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Tree getTreeGrowth(int treeNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Tree getBucketList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addBucketList(Tree tree) throws Exception {
			
		
	}

	@Override
	public void updateBucketList(Tree tree) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeBucketList(Tree tree) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void confirmBucketList(Tree tree) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Calender getCalender(int treeNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void searchTreeAndForest() throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Tree getNoticeMessageBox(int treeNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void addFamilyMotto(Tree tree) throws Exception {
		sqlSession.insert("TreeMapper.addFamilyMotto", tree);
		
	}

	@Override
	public void updateFamilyMotto(Tree tree) throws Exception {
		sqlSession.update("TreeMapper.updateFamilyMotto", tree);
		
	}

	@Override
	public void removeFamilyMotto(Tree tree) throws Exception {
		sqlSession.delete("TreeMapper.deletFamilyMotto", tree);
		
	}

}
