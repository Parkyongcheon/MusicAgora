package com.devfox.dao;

import com.devfox.dto.UserVO;

public interface UserDAO {
 
	public int insertuser(UserVO vo);
	public int loginuser(UserVO vo);
}
