package com.devfox.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.devfox.dto.FollowVO;
import com.devfox.dto.MessageVO;

@Repository
public class MessageDAOImpl implements MessageDAO{

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public int inmessage(MessageVO vo) {
		
		int num = 0;
		try 
		{
			num = sqlSession.insert("MessageMapper.inmessage", vo);
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		return num;
	}
	
	@Override
	public int checkid(String id)
	{
		int num = 0;
		try
		{
			num = sqlSession.selectOne("MessageMapper.checkid", id);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return num;
	}
}
