package com.cts.mindbenders.helper;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cts.mindbenders.constants.ReviewConstant;
import com.cts.mindbenders.dao.HotelDAO;
import com.cts.mindbenders.models.HotelBean;
import com.cts.mindbenders.models.Review;
import com.cts.mindbenders.models.ReviewBO;
import com.cts.mindbenders.utils.MailUtil;

@Component
public class HotelHelper {
	private static final Logger LOGGER = LoggerFactory.getLogger(HotelHelper.class);
	
	@Autowired
	HotelDAO hotelDAO;
	
	public List<HotelBean> getHotels() {
		LOGGER.info("Inside HotelHelper.getHotels() method...."); 
		return hotelDAO.getHotels();
	}
	
	public HotelBean getHotelByCode(String hotelCode) {
		LOGGER.info("Inside HotelHelper.getHotelById() method...."); 
		return hotelDAO.getHotelByCode(hotelCode);
	}
	
	public void processReview(int rvwCleaness, int rvwService, int rvwStaff, int rvwLocation, int rvwMoney, int rvwFood,
			String rvwCommentsPros, String rvwCommentsCons, String hotelcode, String userName) {
		// TODO Auto-generated method stub
		
		Review review = new Review();

		//Date rvwDate = new Date();
		String rvwState = ReviewConstant.REVIEW_STATE;
		double rvwOverall = Math.round(((rvwCleaness + rvwService + rvwStaff + rvwLocation + rvwMoney + rvwFood) / 6)*100.0)/100.0;

		//review.setRvwDate(rvwDate);
		review.setHotelcode(hotelcode);
		review.setUserName(userName);
		review.setRvwCleaness(rvwCleaness);
		review.setRvwService(rvwService);
		review.setRvwStaff(rvwStaff);
		review.setRvwLocation(rvwLocation);
		review.setRvwMoney(rvwMoney);
		review.setRvwFood(rvwFood);
		review.setRvwOverall(rvwOverall);
		review.setRvwCommentsPros(rvwCommentsPros);
		review.setRvwCommentsCons(rvwCommentsCons);
		review.setRvwState(rvwState);

		System.out.println("Helper :"+review.toString());
		hotelDAO.saveReview(review);
		MailUtil.notifiyAdminReview(review);
		
	}

	public List<ReviewBO> getReviews(String hotelcode) {
		List<ReviewBO> reviews=hotelDAO.getReviews(hotelcode);
		return reviews;
	}
	
	public List<ReviewBO> getAllReviews() {
		List<ReviewBO> reviews=hotelDAO.getAllReviews();
		return reviews;
	}
	
	public boolean updateReviewById(int reviewId, String state) {
		return hotelDAO.updateReviewStateById(reviewId, state);
	}

}
