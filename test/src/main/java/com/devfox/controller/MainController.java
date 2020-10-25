package com.devfox.controller;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;import org.apache.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.devfox.dao.FollowDAO;
import com.devfox.dao.UserDAO;
import com.devfox.dto.FollowVO;
import com.devfox.dto.UserVO;

@Controller
public class MainController {
	
	@Inject
	private FollowDAO followdao;
	
	@Inject
	private UserDAO userdao;
	
	
	@GetMapping("/team")
	public String team() throws Exception
	{
		return "form/team";
	}
	
	@GetMapping("/recommend")
	public String recommend() throws Exception
	{
		return "form/recommend";
	}
	
	@GetMapping("/masterpiece")
	public String masterpiece() throws Exception
	{
		return "form/masterpiece";
	}
	
	@GetMapping("/door")
	public String door() throws Exception
	{
		return "door";
	}
	
	@GetMapping("/login")
	public String login() throws Exception
	{
		return "form/login";
	}
	
	@GetMapping("/about")
	public String about() throws Exception
	{
		return "form/about";
	}
	
	@GetMapping("/setting")
	public String setting(Model model) throws Exception
	{
		int num = followdao.selfollow("first");
		
		model.addAttribute("follownum", num);
		
		return "form/setting";
	}
	@ResponseBody
	@RequestMapping(value="/insertuser", method = RequestMethod.POST)
	public int insertuser(UserVO vo)
	{
		int num = 0;
		try 
		{
			String id = vo.getId();
			num = userdao.insertuser(vo);
			System.out.println(id + " has Sign Up");
			return num;
		}
		catch(Exception e)
		{
			System.out.println(e);
			//System.out.println(num);
			return num;
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/loginuser", method = RequestMethod.POST)
	public int insertuser(UserVO vo, HttpSession session)
	{
		int num = 0;
		num = userdao.loginuser(vo);
		String id = vo.getId();
		session.setAttribute("userid", id);
		System.out.println(id+" Has Login");
		
		return num;
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session, HttpServletRequest request, HttpServletResponse resp)
	{
		
		session = request.getSession();
		String id = (String) session.getAttribute("userid");
		System.out.println(id+" Has Logged Out");
		
		request.getSession().invalidate();
		
		try {
			resp.sendRedirect("/main");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	@ResponseBody
	@RequestMapping(value="/insertfollow", method = RequestMethod.GET)
	public int insertfollow(FollowVO vo)
	{
		int num = 0;
		try 
		{
			num = followdao.insertfollow(vo);
			
			String follow 	= vo.getFollow();
			String follower = vo.getFollower();
			System.out.println("Susscess Add Follow");
			System.out.println(follower + " Followed " + follow);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return num;
	}
	
	@ResponseBody
	@RequestMapping(value="/insertfollower", method = RequestMethod.GET)
	public int insertfollower(FollowVO vo)
	{
		int num = 0;
		try 
		{
			num = followdao.insertfollower(vo);
			
			String follow 	= vo.getFollow();
			String follower = vo.getFollower();
			System.out.println("Susscess Add Follower");
			System.out.println(follow + " Is Now A Follower Of " + follower);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return num;
	}
	
	@ResponseBody
	@RequestMapping(value="/selfollower", method = RequestMethod.GET)
	public List<String> insertfollower(String follow)
	{
		List<String> list = null;
		try 
		{
			
			list = followdao.selfollower(follow);
			list.get(1);
			System.out.println("sellfollower Contorlloer In");
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return list;
	}
	
}
