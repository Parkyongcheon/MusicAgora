package com.devfox.controller;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.multipart.MultipartFile;
import java.util.UUID;

import com.devfox.dao.UserDAO;
import com.devfox.dto.UserVO;

@Controller
public class UploadController {

	private static final Logger logger = LoggerFactory.getLogger(UploadController.class);
	
	@Resource(name="uploadPath")
	String uploadPath;
	
	@Inject
	private UserDAO userdao;
	
	
	@SuppressWarnings("null")
	@RequestMapping(value = "upload", method=RequestMethod.POST)
	public String upload(@RequestParam(value = "file") MultipartFile file,HttpSession session, HttpServletRequest request, UserVO vo)
	{
		try 
		{
			session = request.getSession();
			String id = (String) session.getAttribute("userid");
			String ofile = file.getOriginalFilename();
			//체크할 필요가 없음 그래서 없앰
			//String sfile = userdao.sfilecheck(id);
			UUID uuid = UUID.randomUUID();
			String sfile = uuid + file.getOriginalFilename();
			System.out.println(sfile);
			
			vo.setId(id);
			vo.setOfile(ofile);
			vo.setSfile(sfile);
			
			userdao.uploadfile(vo);	
			
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
