package com.cts.mindbenders.dao;

import org.springframework.stereotype.Component;

import com.cts.mindbenders.models.UserBean;

@Component
public interface LoginDAO {
	UserBean getActiveUserByCredential(UserBean user) throws Exception;
	
	UserBean validateUserByRefKey(String refKey);

}
