package com.devfox.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.devfox.dto.RecomVO;

@Repository
public class RecomDAOImpl implements RecomDAO{

	@Inject
	private SqlSession sqlSession;
	
	private static final String SelectRecom = "RecomMapper.selectRecom";
	
	@Override
	public RecomVO selectRecom(String id)
	{
		
		return (RecomVO)sqlSession.selectOne(SelectRecom, id);
	}
}