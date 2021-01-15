package com.wwft.service.domain;

import java.sql.Date;

public class User {
	
	private String userId;
	private String password;
	private String email;
	private int treeno;
	private Date userwithdrawregdate;	
	private Date userregDate;
	private String userstate;
	private String role;

	public User() {
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getTreeno() {
		return treeno;
	}

	public void setTreeno(int treeno) {
		this.treeno = treeno;
	}

	public Date getUserwithdrawregdate() {
		return userwithdrawregdate;
	}

	public void setUserwithdrawregdate(Date userwithdrawregdate) {
		this.userwithdrawregdate = userwithdrawregdate;
	}

	public Date getUserregDate() {
		return userregDate;
	}

	public void setUserregDate(Date userregDate) {
		this.userregDate = userregDate;
	}

	public String getUserstate() {
		return userstate;
	}

	public void setUserstate(String userstate) {
		this.userstate = userstate;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("User [userId=");
		builder.append(userId);
		builder.append(", password=");
		builder.append(password);
		builder.append(", email=");
		builder.append(email);
		builder.append(", treeno=");
		builder.append(treeno);
		builder.append(", userwithdrawregdate=");
		builder.append(userwithdrawregdate);
		builder.append(", userregDate=");
		builder.append(userregDate);
		builder.append(", userstate=");
		builder.append(userstate);
		builder.append(", role=");
		builder.append(role);
		builder.append("]");
		return builder.toString();
	}

}
