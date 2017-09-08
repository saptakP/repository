package com.cts.mindbenders.helper;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.WebRequest;

import com.cts.mindbenders.dao.LoginDAOImpl;
import com.cts.mindbenders.models.UserBean;
import com.cts.mindbenders.utils.LoginUtil;

/**
 * @author 361573
 * Login Helper class
 */
@Component
public class LoginHelper {
	private static final Logger logger = LoggerFactory.getLogger(LoginHelper.class);

	@Autowired
	private LoginDAOImpl loginDAO;
	
	

	public boolean isUserLoggedIn(HttpServletRequest request) {
		return com.cts.mindbenders.utils.LoginUtil.isUserLoggedIn(request);
	}

	/**
	 * Validates the user credentials
	 * @param request
	 * @return boolean
	 * @throws Exception 
	 */
	public UserBean validateCredentials(UserBean user) throws Exception {
		logger.debug("Inside validateCredentials - helper");
		UserBean userBean = null;

		if (user != null && StringUtils.isNotBlank(user.getUserName()) && StringUtils.isNotBlank(user.getPassword())) {
			userBean  = loginDAO.getActiveUserByCredential(user);
		}
		return userBean;
	}

	/**
	 * Logs out the user of damweb
	 * @param request
	 * @return boolean
	 */
	public boolean logout(HttpServletRequest request, WebRequest webRequest) {
		return LoginUtil.invalidateSession(request.getSession(), webRequest);
	}

}
