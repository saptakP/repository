package com.cts.mindbenders.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import com.cts.mindbenders.helper.LoginHelper;
import com.cts.mindbenders.models.UserBean;
import com.cts.mindbenders.utils.LoginUtil;

@Controller
@RequestMapping("/")
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	LoginHelper loginHelper;
	
	@RequestMapping(method = RequestMethod.GET)
	public String preLogin_GET(ModelMap model, HttpServletRequest request) {
		if (LoginUtil.isUserLoggedIn(request)) {
			logger.debug("user already logged in:preLogin_GET()");
			return "Login";
		} else {
			model.addAttribute("userBean", new UserBean());
			return "Login";
		}
	}
	
	@RequestMapping(value = "dashboard", method = { RequestMethod.GET })
	public ModelAndView login_GET(HttpServletRequest request) {

		// In this method we're not checking credentials. Only checking if user
		// is already logged in and thereby navigating user to dashboard page
		// otherwise taking user to login page.
		logger.debug("Inside login - GET");
		if (LoginUtil.isUserLoggedIn(request)) {
			logger.debug("user already logged in");
			return new ModelAndView("user/userdashboard");
		} else {
			logger.error("user not logged in");
			return new ModelAndView("redirect:/");
		}

	}

	@RequestMapping(value="dashboard", method=RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("userBean") UserBean user, HttpServletRequest request) throws Exception {
		logger.debug("Inside login - POST");
		HttpSession session = request.getSession(true);
		//Checking if user already logged in...
		if(loginHelper.isUserLoggedIn(request)){
			logger.debug("user already logged in");
			return new ModelAndView("user/userdashboard");

		}else{
			logger.debug("user not logged in");
			//validation will be implemented later
			UserBean userBean = loginHelper.validateCredentials(user);
			
			if( userBean!= null && StringUtils.isNotBlank(userBean.getUserName()) ) {
				session.setAttribute("username", userBean.getUserName());
				session.setAttribute("usertype", userBean.getUserType());
				if( "Admin".equalsIgnoreCase(userBean.getUserType()) ) {
					return new ModelAndView("user/userdashboard", "userBean", userBean);
				} else {
					return new ModelAndView("user/admindashboard", "userBean", userBean);
				}
			}else{
				logger.error("Either no such active user present or credential mismatch for userId: "+user.getUserName());
				return new ModelAndView("redirect:/");
			}
		}
	}

	@RequestMapping(value = "logout", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView logout(HttpServletRequest request, WebRequest webRequest){
		if(loginHelper.logout(request, webRequest)){
			return new ModelAndView("redirect:/");
		}else{
			return new ModelAndView("redirect:/dashboard");
		}
	}

}
