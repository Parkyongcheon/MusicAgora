package com.devfox.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.JsonNode;

import com.devfox.login.googleAPI;




@Controller
public class GoogleController {
	
	@Autowired
	private googleAPI google;
	
	@Autowired
	private GoogleConnectionFactory googleConnectionFactory;
	@Autowired
	private OAuth2Parameters googleOAuth2Parameters;
		
	@RequestMapping(value = "/main/google", method = { RequestMethod.GET, RequestMethod.POST })
	public String googleCallback(Model model, @RequestParam String code, HttpSession session) throws IOException {

		JsonNode jsonToken = google.getAccessToken(code);
		String accessToken = jsonToken.get("access_token").toString();
		String refreshToken = "";
		if(jsonToken.has("refresh_token")) {
            refreshToken = jsonToken.get("refresh_token").toString();
        }
        String expiresTime = jsonToken.get("expires_in").toString();
		
        //Access Token으로 사용자 정보 반환
        JsonNode userInfo = google.getGoogleUserInfo(accessToken);
        System.out.println(userInfo.toString());
        
		return "main";
	}
	
	/*
	 * @GetMapping("/googlelogout") public String logout(HttpSession session) {
	 * System.out.println("Google Logout"); session.invalidate(); return
	 * "logout/googlelogout"; }
	 */
}
