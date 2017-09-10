package com.cts.mindbenders.models;

import java.io.Serializable;

public class UserBean implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int userId;
	private String userName;
	private String password;
	private String userType;
	private String status;
	private String refKey;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRefKey() {
		return refKey;
	}
	public void setRefKey(String refKey) {
		this.refKey = refKey;
	}
	@Override
	public String toString() {
		return "UserBean [userId=" + userId + ", userName=" + userName + ", userType="
				+ userType + ", status=" + status + ", refKey=" + refKey + "]";
	}
	
	
	

}
