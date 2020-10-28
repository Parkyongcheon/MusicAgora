package com.devfox.dao;

import com.devfox.dto.MessageVO;

public interface MessageDAO {
	//message 저장용
	public int inmessage(MessageVO vo);
	//message id 존재 및 체크
	public int checkid(String id);
}
