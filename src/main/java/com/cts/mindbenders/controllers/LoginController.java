package com.cts.mindbenders.controllers;

import java.util.List;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import com.cts.mindbenders.constants.LoginConstant;
import com.cts.mindbenders.helper.HotelHelper;
import com.cts.mindbenders.helper.LoginHelper;
import com.cts.mindbenders.models.HotelBean;
import com.cts.mindbenders.models.Review;
import com.cts.mindbenders.models.ReviewBO;
import com.cts.mindbenders.models.UserBean;
import com.cts.mindbenders.utils.LoginUtil;

@Controller
@RequestMapping("/")
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	LoginHelper loginHelper;
	
	@Autowired
	HotelHelper hotelHelper;
	
	@RequestMapping(method = RequestMethod.GET)
	public String getLanding(ModelMap model, HttpServletRequest request) {
		if (LoginUtil.isUserLoggedIn(request)) {
			logger.debug("user already logged in:preLogin_GET()");
			return "Landing";
		} else {
			model.addAttribute("userBean", new UserBean());
			return "Landing";
		}
	}
	
	@RequestMapping(value = "prelogin", method = RequestMethod.GET)
	public String preLogin_GET(ModelMap model, HttpServletRequest request) {
		if (LoginUtil.isUserLoggedIn(request)) {
			logger.debug("user already logged in:preLogin_GET()");
			return "Landing";
		} else {
			model.addAttribute("userBean", new UserBean());
			return "user/userlogin";
		}
	}
	@RequestMapping(value = "preloginRedirect", method = RequestMethod.GET)
	public String preloginRedirect(ModelMap model, HttpServletRequest request) {
		if (LoginUtil.isUserLoggedIn(request)) {
			logger.debug("user already logged in:preLogin_GET()");
			return "Landing";
		} else {
			model.addAttribute("userBean", new UserBean());
			return "user/userlogin";
		}
	}
	
	
	@RequestMapping(value = "dashboard", method = { RequestMethod.GET })
	public ModelAndView login_GET(HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		// In this method we're not checking credentials. Only checking if user
		// is already logged in and thereby navigating user to dashboard page
		// otherwise taking user to login page.
		logger.debug("Inside login - GET");
		if (LoginUtil.isUserLoggedIn(request)) {
			logger.debug("user already logged in");
			String userType = (String) session.getAttribute(LoginConstant.LOGIN_USER_TYPE);
			if("Admin".equals(userType)){
				return new ModelAndView("user/admindashboard");
			}else {
				return new ModelAndView("Landing");
			}
			
		} else {
			logger.error("user not logged in");
			return new ModelAndView("redirect:/");
		}

	}

	@RequestMapping(value="dashboard", method=RequestMethod.POST)
	public String login(@ModelAttribute("userBean") UserBean user, HttpServletRequest request, ModelMap model) throws Exception {
		logger.debug("Inside login - POST");
		HttpSession session = request.getSession(true);
		//Checking if user already logged in...
		if(loginHelper.isUserLoggedIn(request)){
			logger.debug("user already logged in");
			return "Landing";

		}else{
			logger.debug("user not logged in");
			//validation will be implemented later
			UserBean userBean = loginHelper.validateCredentials(user);
			
			if( userBean!= null && StringUtils.isNotBlank(userBean.getUserName()) ) {
				//session.setAttribute(LoginConstant.LOGIN_USERID_SESSION_ATTRIBUTE, userBean.getUserId());
				//session.setAttribute(LoginConstant.LOGIN_USERNAME_SESSION_ATTRIBUTE, userBean.getUserName());
				//session.setAttribute(LoginConstant.LOGIN_USERTYPE_SESSION_ATTRIBUTE, userBean.getUserType());
				System.out.println(userBean);
				session.setAttribute(LoginConstant.LOGIN_USERBEAN_SESSION_ATTRIBUTE, userBean);
				if( "Admin".equalsIgnoreCase(userBean.getUserType()) ) {
					session.setAttribute(LoginConstant.LOGIN_USER_TYPE, "Admin");
					
					return "user/admindashboard";
				} else {
					//model.addAttribute("userBean", userBean);
					return "Landing";
				}
			}else{
				logger.error("Either no such active user present or credential mismatch for userId: "+user.getUserName());
				model.addAttribute("userBean", new UserBean());
				return "user/userlogin";
			}
		}
	}

	@RequestMapping(value = "logout", method = {RequestMethod.POST,RequestMethod.GET})
	public String logout(HttpServletRequest request, WebRequest webRequest){
		if(loginHelper.logout(request, webRequest)){
			return "redirect:/";
		}else{
			return "redirect:/Landing";
		}
	}
	
	@ModelAttribute("HOTELS")
	public List<HotelBean> getHotels() {
		List<HotelBean> hotels = hotelHelper.getHotels();
		return hotels;
	}
	
	@ModelAttribute("reviewList")
	public List<ReviewBO> getAllReviews() {
		List<ReviewBO> reviews=hotelHelper.getAllReviews();
		return reviews;
	}

}
