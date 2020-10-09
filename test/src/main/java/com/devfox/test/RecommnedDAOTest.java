package com.devfox.test;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.devfox.dao.RecomDAO;
import com.devfox.dto.RecomVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/root-context.xml")
public class RecommnedDAOTest {
	
	@Inject
	private RecomDAO dao;
	
	@Test
	public void testSelectRecommend() throws Exception
	{
		RecomVO vo = dao.selectRecom("id2");
		System.out.println(vo.getId()+"//"+vo.getPw()+"//"+vo.getName());
	}

}
