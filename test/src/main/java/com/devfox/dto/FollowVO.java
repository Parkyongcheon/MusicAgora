package com.devfox.dto;

public class FollowVO {

	private String follow;
	private String follower;
	
	public FollowVO(String follow, String follower) {
		super();
		this.follow = follow;
		this.follower = follower;
	}
	public FollowVO() {};
	
	public String getFollow() {
		return follow;
	}
	public void setFollow(String follow) {
		this.follow = follow;
	}
	public String getFollower() {
		return follower;
	}
	public void setFollower(String follower) {
		this.follower = follower;
	}
	
}
