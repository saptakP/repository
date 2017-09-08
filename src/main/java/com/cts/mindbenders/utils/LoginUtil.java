package com.cts.mindbenders.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.WebRequest;

import com.cts.mindbenders.constants.LoginConstant;
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
			String userId=(String) request.getSession(false).getAttribute(LoginConstant.LOGIN_USERID_SESSION_ATTRIBUTE);
			if(userId != null){
				isValid=true;
			}
		}
		
		return isValid;
	}

	
	public static String getUserIdFromSession(HttpSession session){
		String userId=null;
		if(null!=session){
			userId=(String)session.getAttribute(LoginConstant.LOGIN_USERID_SESSION_ATTRIBUTE);
		}
		return userId;
	}
}
