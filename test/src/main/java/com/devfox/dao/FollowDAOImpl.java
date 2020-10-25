package com.devfox.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.devfox.dto.FollowVO;


@Repository
public class FollowDAOImpl implements FollowDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String selfollow = "FollowMapper.selfollow";
	
	@Override
	public int selfollow(String follower)
	{
		return sqlSession.selectOne(selfollow, follower);
	}

	@Override
	public int insertfollow(FollowVO vo) {
		
		int num = 0;
		
		try 
		{
			num = sqlSession.insert("FollowMapper.insertfollow", vo);
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		
		return num;
	}
	
	@Override
	public int insertfollower(FollowVO vo) {
		
		int num = 0;
		
		try 
		{
			num = sqlSession.insert("FollowMapper.insertfollower", vo);
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		
		return num;
	}
	
	@Override
	public List<String> selfollower(String follow)
	{
		List<String> list = null;
		try 
		{
			list = sqlSession.selectList("FollowMapper.selfollower", follow);
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		return list;
	}
	

}
