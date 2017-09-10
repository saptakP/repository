package com.cts.mindbenders.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.WebRequest;

import com.cts.mindbenders.constants.LoginConstant;
import com.cts.mindbenders.models.UserBean;
import com.cts.mindbenders.utils.LoginUtil;

public class LoginUtil {

	private static final Logger logger = LoggerFactory.getLogger(LoginUtil.class);

	/**
	 * Invalidates an user session if logged in.
	 * Returns true if successfully invalidated i.e. removed all attributes from session.
	 * @param session
	 * @return boolean
	 */
	public static boolean invalidateSession(HttpSession session, WebRequest webRequest) {
		boolean invalidated = false;
		try {
			if (null != session) {
				String[] sessionAttributes = webRequest.getAttributeNames(RequestAttributes.SCOPE_SESSION);
				for(String sessionAttribute : sessionAttributes){
					session.removeAttribute(sessionAttribute);
				}
				session.invalidate();
				invalidated = true;
			} else {
				invalidated = false;
			}
		} catch (Exception e) {
			logger.error("Exception inside invalidateSession method... Exception: "+e);
			e.printStackTrace();
		}
		return invalidated;
	}

	/**
	 * Checks if any user is logged into application irrespective of user's role
	 * @param request
	 * @return boolean
	 */
	public static boolean isUserLoggedIn(HttpServletRequest request){
		boolean isValid=false;
		if(null==request.getSession(false)){
			isValid=false;
		}else{
			UserBean user=(UserBean)request.getSession(false).getAttribute(LoginConstant.LOGIN_USERBEAN_SESSION_ATTRIBUTE);
			if(user != null){
				isValid=true;
			}
		}
		
		return isValid;
	}

	
	public static String getUserIdFromSession(HttpSession session){
		String userId=null;
		if(null!=session){
			UserBean user = (UserBean)session.getAttribute(LoginConstant.LOGIN_USERBEAN_SESSION_ATTRIBUTE);
			userId = String.valueOf(user.getUserId());
		}
		return userId;
	}
}
