package com.cts.mindbenders.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.cts.mindbenders.models.HotelBean;
import com.cts.mindbenders.models.Review;
import com.cts.mindbenders.models.ReviewBO;

@Component
public interface HotelDAO {
	
	List<HotelBean> getHotels();
	
	HotelBean getHotelByCode(String hotelCode);
	
	void saveReview(Review review);
	
	List<ReviewBO> getReviews(String hotelcode);

	List<ReviewBO> getAllReviews();

	boolean updateReviewStateById(int reviewId, String state);
}
