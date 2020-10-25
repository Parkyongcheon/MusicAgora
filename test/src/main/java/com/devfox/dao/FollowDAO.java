package com.devfox.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.devfox.dto.FollowVO;

public interface FollowDAO {

	//Test용
	public int selfollow(String follower);
	//follow, follower db에 insert into;
	public int insertfollow(FollowVO vo);
	public int insertfollower(FollowVO vo);
	//나를 팔로우하는 팔로워를 조회하기 위해 만듬
	public List<String> selfollower(String follow);
}
