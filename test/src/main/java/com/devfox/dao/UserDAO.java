package com.devfox.dao;

import com.devfox.dto.UserVO;

public interface UserDAO {
 
	public int insertuser(UserVO vo);
	public int loginuser(UserVO vo);
	//Upload시 파일 userdb에 저장하고 꺼낼 수 있도록 준비
	public int uploadfile(UserVO vo);
	//Upload에서 sfile이 있는지 없는지 확인 있으면 그곳에 저장하도록 함
	public String sfilecheck(String id);
}
