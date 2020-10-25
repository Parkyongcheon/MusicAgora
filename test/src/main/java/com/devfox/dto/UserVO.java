package com.devfox.dto;

public class UserVO {

	private String id;
	private String pw;
	private String email;
	private String ofile;
	private String sfile;
	
	public UserVO() {};
	
	public UserVO(String id, String pw, String email, String ofile, String sfile) {
		super();
		this.id = id;
		this.pw = pw;
		this.email = email;
		this.ofile = ofile;
		this.sfile = sfile;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getOfile() {
		return ofile;
	}
	public void setOfile(String ofile) {
		this.ofile = ofile;
	}
	public String getSfile() {
		return sfile;
	}
	public void setSfile(String sfile) {
		this.sfile = sfile;
	}
	
	
}
