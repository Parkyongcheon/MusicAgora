package com.devfox.controller;

import java.util.HashMap;
import java.util.logging.Logger;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.JsonNode;

import com.devfox.login.kakaoAPI;



@Controller
public class KakaoController {

	@Autowired
	private kakaoAPI kakao;
	
	JsonNode node;
	String access_Token = "";
	
	@RequestMapping(value="/main/kakao")
	public String login(@RequestParam("code") String code, HttpSession session, Model model){
		
		String access_Token = kakao.getAccessToken(code);
		//System.out.println("controller access_token : " + access_Token);
		HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
	    System.out.println("login Controller : " + userInfo);
	
		return "main";
	}
	
	/*
	 * @RequestMapping(value="/kakaologout", produces = "application/json") public
	 * String logout(HttpSession session) {
	 * 
	 * //System.out.println("in+"+(String)session.getAttribute("access_Token"));
	 * kakao.kakaoLogout((String)session.getAttribute("access_Token"));
	 * 
	 * 
	 * //session.removeAttribute("access_Token");
	 * //session.removeAttribute("userId"); session.invalidate();
	 * 
	 * 
	 * return "logout/kakaologout"; }
	 */
	
	
}
