package com.cts.mindbenders.controllers;

import java.io.UnsupportedEncodingException;
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
import org.springframework.web.bind.annotation.ResponseBody;

import com.cts.mindbenders.constants.LoginConstant;
import com.cts.mindbenders.helper.HotelHelper;
import com.cts.mindbenders.models.HotelBean;
import com.cts.mindbenders.models.ReviewBO;
import com.cts.mindbenders.models.UserBean;
import com.cts.mindbenders.utils.LoginUtil;

@Controller
public class ReviewController {
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

	@Autowired
	HotelHelper hotelHelper;

	@RequestMapping("/show-reviews")
	public String showReviews(HttpServletRequest request, ModelMap model) {
		String hotelcode = request.getParameter("hotelCode");
		List<ReviewBO> reviews = hotelHelper.getReviews(hotelcode);
		System.out.println(reviews);
		return reviews.toString();
	}

	@RequestMapping(value = "/submit-reviews", method = RequestMethod.POST)
	public String submitReviews(HttpServletRequest request, ModelMap model) throws UnsupportedEncodingException {
		HttpSession session = request.getSession();
		logger.info("inside submit review!!");
		int rvwCleaness = 0;
		int rvwService = 0;
		int rvwStaff = 0;
		int rvwLocation = 0;
		int rvwMoney = 0;
		int rvwFood = 0;
		
		String rvwCommentsPros = null;
		String rvwCommentsCons = null;

		String hotelcode = request.getParameter("hotelCode");

		try {
			if (request.getParameter("cleaness") != null)
				rvwCleaness = Integer.parseInt(request.getParameter("cleaness"));
			if (request.getParameter("service") != null)
				rvwService = Integer.parseInt(request.getParameter("service"));
			if (request.getParameter("staff") != null)
				rvwStaff = Integer.parseInt(request.getParameter("staff"));
			if (request.getParameter("location") != null)
				rvwLocation = Integer.parseInt(request.getParameter("location"));
			if (request.getParameter("money") != null)
				rvwMoney = Integer.parseInt(request.getParameter("money"));
			if (request.getParameter("food") != null)
				rvwFood = Integer.parseInt(request.getParameter("food"));
			if (request.getParameter("comments-pros") != null)
				rvwCommentsPros = request.getParameter("comments-pros");
			if (request.getParameter("comments-cons") != null)
				rvwCommentsCons = request.getParameter("comments-cons");
		} catch (NumberFormatException e) {
			logger.error("NumberFormatException...inside submitReviews()");

		}
		
		
		

		/*System.out.println(rvwCleaness + "|" + rvwService + "|" + rvwStaff + "|" + rvwLocation + "|" + rvwMoney + "|"
				+ rvwFood + "|" + rvwCommentsPros + "|" + rvwCommentsCons);*/


		String returnUrl = null;
		if (LoginUtil.isUserLoggedIn(request)) {
			logger.debug("user already logged in " + hotelcode);
			UserBean userBean = (UserBean) request.getSession(false)
					.getAttribute(LoginConstant.LOGIN_USERBEAN_SESSION_ATTRIBUTE);

				hotelHelper.processReview(rvwCleaness, rvwService, rvwStaff, rvwLocation, rvwMoney, rvwFood, rvwCommentsPros,
						rvwCommentsCons, hotelcode, userBean.getUserName());
			//reload QR code
			if(userBean != null && StringUtils.isNotBlank(hotelcode)){
				StringBuilder builder = new StringBuilder();
				builder.append(request.getServletContext().getContextPath());
				builder.append("/getHotelDetails?hotelCode=").append(hotelcode);
				builder.append("&ref=").append(URLEncoder.encode(userBean.getRefKey(), "UTF-8"));
				session.setAttribute("QRCODE_URL", builder.toString());
			}
			//System.out.println("hotelcode : "+hotelcode);
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
			
			//System.out.println(reviews);
			returnUrl = "HotelDetails";

		} else {
			logger.error("user not logged in");
			returnUrl = "redirect:/preloginRedirect";
		}
		return returnUrl;
	}

	@RequestMapping(value="/updateReview", method=RequestMethod.GET)
	public @ResponseBody String updateReviewById(HttpServletRequest request) {
		String reviewId = request.getParameter("reviewId");
		String state = request.getParameter("state");
		boolean ack = hotelHelper.updateReviewById(Integer.valueOf(reviewId), state);
		return ack == true ? "S" : "F";
	}

	@ModelAttribute("HOTELS")
	public List<HotelBean> getHotels() {
		List<HotelBean> hotels = hotelHelper.getHotels();
		return hotels;
	}

}
