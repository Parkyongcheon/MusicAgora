package com.devfox.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.devfox.dto.UserVO;

@Repository
public class UserDAOImpl implements UserDAO{
	
	@Inject
	@Autowired
	SqlSession sqlSession;
	
	public int insertuser(UserVO vo)
	{
		int num = 0;
		try 
		{
			num = sqlSession.insert("UserMapper.insertuser", vo);
			//System.out.println("daolmpl의"+num);
			return num;
		} catch (Exception e) {
			System.out.println(e);
			return num;
		}	
	}
	
	public int loginuser(UserVO vo)
	{
		int num = 0;
		
		try 
		{
			num = sqlSession.selectOne("UserMapper.loginuser",vo);
			return num;
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			return num;
		}
		
	}
	
	
	public int uploadfile(UserVO vo)
	{
		int num = 0;
		
		try 
		{
			num = sqlSession.update("UserMapper.uploadfile", vo);
			return num;
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			return num;
		}
	}
	
	
	public String sfilecheck(String id)
	{
		String sfile = null;
		try 
		{
			sfile = sqlSession.selectOne("UserMapper.sfilecheck", id);
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		return sfile;
	}
}
