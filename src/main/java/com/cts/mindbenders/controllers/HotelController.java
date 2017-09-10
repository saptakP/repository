package com.cts.mindbenders.controllers;

import java.net.URLEncoder;
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

import com.cts.mindbenders.constants.LoginConstant;
import com.cts.mindbenders.helper.HotelHelper;
import com.cts.mindbenders.helper.LoginHelper;
import com.cts.mindbenders.models.HotelBean;
import com.cts.mindbenders.models.ReviewBO;
import com.cts.mindbenders.models.UserBean;
import com.cts.mindbenders.utils.LoginUtil;

@Controller
public class HotelController {
	private static final Logger logger = LoggerFactory.getLogger(HotelController.class);
	
	@Autowired
	HotelHelper hotelHelper;
	
	@Autowired
	LoginHelper logHelper;
	
	@RequestMapping(value="getHotelDetails", method=RequestMethod.GET)
	public String getHotelDetails(HttpServletRequest request,ModelMap model) throws Exception {
		logger.debug("Inside getHotelDetails - POST - ");
		HttpSession session = request.getSession();
		String refkey = null;
		String hotelcode = request.getParameter("hotelCode");
		
		String userAgent = request.getHeader("user-agent").toLowerCase();
		System.out.println("userAgent : "+userAgent);
		if(userAgent.contains("android") || userAgent.contains("iphone")) {
			refkey = request.getParameter("ref");
	
			if(StringUtils.isNotBlank(refkey)){
				//populate user details for mobile phone
				UserBean userBean = logHelper.validateUserByRefKey(refkey);
				session.setAttribute(LoginConstant.LOGIN_USERBEAN_SESSION_ATTRIBUTE, userBean);
			}
		}
		
		session.removeAttribute("QRCODE_URL");
		
		
		if (LoginUtil.isUserLoggedIn(request)) {
			logger.debug("user already logged in " + hotelcode);
			UserBean userBean = (UserBean)request.getSession(false).getAttribute(LoginConstant.LOGIN_USERBEAN_SESSION_ATTRIBUTE);
			
			if(userBean != null && StringUtils.isNotBlank(hotelcode)){
				StringBuilder builder = new StringBuilder();
				builder.append(request.getServletContext().getContextPath());
				builder.append("/getHotelDetails?hotelCode=").append(hotelcode);
				builder.append("&ref=").append(URLEncoder.encode(userBean.getRefKey(), "UTF-8"));
				session.setAttribute("QRCODE_URL", builder.toString());
				//System.out.println(builder.toString());
			}
			
			HotelBean bean = hotelHelper.getHotelByCode(hotelcode);
			session.setAttribute("HOTEL", bean);
			
			double avgReview = 0.0;
			int count = 0;
			//load hotel specific reviews
			List<ReviewBO> reviews = hotelHelper.getReviews(hotelcode);
			if(reviews!=null && !reviews.isEmpty()){
				count = reviews.size();
				model.addAttribute("REVIEWS_COUNT", count);
			}
			for(ReviewBO review : reviews) {
				avgReview += review.getRvwOverall();
			}
			
			if(count != 0) {
				avgReview = Math.round((avgReview/count)*100.0)/100.0;
			}
			model.addAttribute("REVIEWS_AVG", avgReview);
			model.addAttribute("REVIEWS", reviews);
			
			
			return "HotelDetails";
		} else {
			logger.error("user not logged in");
			return "redirect:/preloginRedirect";
		}
	}

	@ModelAttribute("HOTELS")
	public List<HotelBean> getHotels() {
		List<HotelBean> hotels = hotelHelper.getHotels();
		return hotels;
	}
	
	@RequestMapping(value="getPaymentOptions", method=RequestMethod.POST)
	public String getPaymentOptions(HttpServletRequest request) {
		logger.debug("Inside getHotelDetails - POST - ");
		String hotelcode = request.getParameter("hotelCode");
		System.out.println("hotelcode" +hotelcode);
		if (LoginUtil.isUserLoggedIn(request)) {
			logger.debug("user already logged in " + hotelcode);
			return "PaymentFunnel";
		} else {
			logger.error("user not logged in");
			return "redirect:/preloginRedirect";
		}
	}
	
}
