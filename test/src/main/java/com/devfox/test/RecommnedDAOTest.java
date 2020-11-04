package com.devfox.test;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.devfox.dao.FollowDAO;
import com.devfox.dao.RecomDAO;
import com.devfox.dto.RecomVO;
import java.util.UUID;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/root-context.xml")
public class RecommnedDAOTest {
	
	@Inject
	private RecomDAO dao;
	
	@Inject
	private FollowDAO dao2;
	
	
	
	@Test
	public void testSelectRecommend() throws Exception
	{
		RecomVO vo = dao.selectRecom("id2");
		System.out.println(vo.getId()+"//"+vo.getPw()+"//"+vo.getName());
	}
	
	@Test
	public void sel()
	{
		int num = dao2.selfollow("first");
		System.out.println(num);
		UUID uuid = UUID.randomUUID();
		System.out.println(uuid);
	}
	
	
	
}
