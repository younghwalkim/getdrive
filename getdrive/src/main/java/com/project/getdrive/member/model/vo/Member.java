package com.project.getdrive.member.model.vo;

import java.sql.Date;

public class Member implements java.io.Serializable{

	private static final long serialVersionUID = -576986089786287738L;

	private int accountNo;
	private String name;
	private String email;
	private String pwd;
	private Date cdate;
	private String loginType;
	
	public Member() {
		super();
	}

	public Member(int accountNo, String name, String email, String pwd, Date cdate, String loginType) {
		super();
		this.accountNo = accountNo;
		this.name = name;
		this.email = email;
		this.pwd = pwd;
		this.cdate = cdate;
		this.loginType = loginType;
	}

	public int getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(int accountNo) {
		this.accountNo = accountNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public Date getCdate() {
		return cdate;
	}

	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}

	public String getLoginType() {
		return loginType;
	}

	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}

	@Override
	public String toString() {
		return "Member [accountNo=" + accountNo + ", name=" + name + ", email=" + email + ", pwd=" + pwd + ", cdate="
				+ cdate + ", loginType=" + loginType + "]";
	}
	
	
}
