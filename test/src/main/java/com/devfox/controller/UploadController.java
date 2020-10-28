package com.devfox.controller;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadController {

	private static final Logger logger = LoggerFactory.getLogger(UploadController.class);
	
	@Resource(name="uploadPath")
	String uploadPath;
	
	
	@RequestMapping(value = "upload", method=RequestMethod.POST)
	public String upload(@RequestParam(value = "file") MultipartFile file, Model model, HttpSession session)
	{
		/*
		 * File target = new File(uploadPath, sfilename); logger.info("upload 실행");
		 * model.addAttribute("savefileName"+target); logger.info("target은"+target);
		 */
		try 
		{
			FileOutputStream fos = new FileOutputStream("c:/image/"+ file.getOriginalFilename());
			InputStream is = file.getInputStream();
			int readCount = 0;
			byte[] buffer = new byte[1024];
			while((readCount = is.read(buffer)) != -1)
			{
				fos.write(buffer,0,readCount);
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return "redirect:/setting";
	}
}
