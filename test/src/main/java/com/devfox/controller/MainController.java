package com.devfox.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	
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
	public String setting() throws Exception
	{
		return "form/setting";
	}
	
}
