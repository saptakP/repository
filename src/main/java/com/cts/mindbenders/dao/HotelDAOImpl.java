package com.cts.mindbenders.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cts.mindbenders.constants.DBQueryConstant;
import com.cts.mindbenders.models.HotelBean;
import com.cts.mindbenders.models.Review;
import com.cts.mindbenders.models.ReviewBO;

@Repository
@Qualifier("hotelDAO")
@Configuration
@PropertySource(value="classpath:hoteldb.properties"/*, ignoreResourceNotFound=true*/)
public class HotelDAOImpl implements HotelDAO {

	private static final Logger logger = LoggerFactory.getLogger(HotelDAOImpl.class);

	private JdbcTemplate jdbcTemplate;
	
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	@Autowired
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

		
	@Autowired
	private Environment env;
	
	
	@Override
	@Transactional(readOnly=true)
	public List<HotelBean> getHotels() {
		logger.debug("Inside HotelDAO... getHotels method.");
		try {
			return  getJdbcTemplate().query(env.getProperty(DBQueryConstant.GET_HOTELS), new RowMapper<HotelBean>() {
				@Override
				public HotelBean mapRow(ResultSet rs, int rowNum) throws SQLException {
					HotelBean hotel = new HotelBean();
					hotel.setHotelId(rs.getInt("hotel_id"));
					hotel.setHotelCode(rs.getString("hotel_code"));
					hotel.setHotelName(rs.getString("hotel_name"));
					hotel.setShortDesc(rs.getString("short_desc"));
					hotel.setDetailedDesc(rs.getString("detailed_desc"));
					hotel.setHotelAddress(rs.getString("htl_address"));
					//hotel.set
					hotel.setRating(rs.getString("htl_rating"));
					hotel.setThumbImglink(rs.getString("htl_thumb_img_link"));
					hotel.setSlideImglink(rs.getString("htl_slide_img_link"));
					hotel.setScore(rs.getInt("htl_360score"));
					
					return hotel;
				}
			});
		} catch (Exception e) {
			logger.error("Exception occured getHotelByCode() : ", e);
			return null;
		}
		
	}

	@Override
	@Transactional(readOnly=true)
	public HotelBean getHotelByCode(String hotelCode) {
		try {
		HotelBean bean = (HotelBean)getJdbcTemplate().queryForObject(
				env.getProperty(DBQueryConstant.GET_HOTELS_BY_CODE), new Object[] { hotelCode }, new RowMapper<HotelBean>(){

					@Override
					public HotelBean mapRow(ResultSet rs, int rowNum) throws SQLException {
						HotelBean hotel = new HotelBean();
						hotel.setHotelId(rs.getInt("hotel_id"));
						hotel.setHotelCode(rs.getString("hotel_code"));
						hotel.setHotelName(rs.getString("hotel_name"));
						hotel.setShortDesc(rs.getString("short_desc"));
						hotel.setDetailedDesc(rs.getString("detailed_desc"));
						hotel.setHotelAddress(rs.getString("htl_address"));
						//hotel.set
						hotel.setRating(rs.getString("htl_rating"));
						hotel.setThumbImglink(rs.getString("htl_thumb_img_link"));
						hotel.setSlideImglink(rs.getString("htl_slide_img_link"));
						hotel.setScore(rs.getInt("htl_360score"));
						hotel.setVideolink(rs.getString("htl_video_link"));
						return hotel;
					}
					
				});
		return bean;
		}catch(Exception ex) {
			logger.error("Exception occured getHotelByCode() : ", ex);
			return new HotelBean();
		}
	}
	
	//added
	@Override
	@Transactional(readOnly=false)
	public void saveReview(Review review) {
		logger.debug("Inside Review Insert... getHotels method.");
		
		//System.out.println("inside saveReview : "+env.getProperty(DBQueryConstant.INSERT_REVIEWS));
		try {
			getJdbcTemplate().update(env.getProperty(DBQueryConstant.INSERT_REVIEWS), new Object[] { 
					//review.getRvwDate(),
					review.getRvwCleaness(),
					review.getRvwService(),
					review.getRvwStaff(),
					review.getRvwLocation(),
					review.getRvwMoney(),
					review.getRvwFood(),
					review.getRvwOverall(),
					review.getRvwCommentsPros(),
					review.getRvwCommentsCons(),
					review.getRvwState(),
					review.getHotelcode(),
					review.getUserName()
			});
		}catch(Exception ex) {
			logger.error("Exception occured saveReview() : ", ex);
		}
	}

	@Override
	@Transactional(readOnly=true)
	public List<ReviewBO> getReviews(String hotelcode) {
		try {
			return  getJdbcTemplate().query(env.getProperty(DBQueryConstant.SELECT_REVIEWS), new Object[]{hotelcode},new RowMapper<ReviewBO>() {
				@Override
				public ReviewBO mapRow(ResultSet rs, int rowNum) throws SQLException {
					ReviewBO reviewBO = new ReviewBO();
					reviewBO.setReviewId(rs.getInt("RVW_ID"));
					reviewBO.setUserName(rs.getString("username"));
					reviewBO.setHotelName(rs.getString("HOTEL_NAME"));
					reviewBO.setRvwCommentsPros(rs.getString("RVW_CMT_PROS"));
					reviewBO.setRvwCommentsCons(rs.getString("RVW_CMT_CONS"));
					reviewBO.setRvwOverall(rs.getDouble("RVW_OVR_RATE"));
					reviewBO.setRvwCleaness(rs.getInt("RVW_CLEAN"));
					reviewBO.setRvwService(rs.getInt("RVW_SERVICE"));
					reviewBO.setRvwStaff(rs.getInt("RVW_STAFF"));
					//reviewBO.setRvwService(rs.getInt("RVW_LOC"));
					reviewBO.setRvwMoney(rs.getInt("RVW_MONEY"));
					reviewBO.setRvwFood(rs.getInt("RVW_FOOD"));
					reviewBO.setRvwDate(rs.getDate("RVW_DATE"));
					reviewBO.setRvwLocation(rs.getInt("RVW_LOC"));
					
					
					return reviewBO;
				}
			});
		} catch (Exception e) {
			logger.error("Exception occured saveReview() : ", e);
			return null;
		}
		
	}
	
	@Override
	@Transactional(readOnly=true)
	public List<ReviewBO> getAllReviews() {
		try {
			return getJdbcTemplate().query(env.getProperty(DBQueryConstant.SELECT_ALL_REVIEWS), new RowMapper<ReviewBO>() {
				@Override
				public ReviewBO mapRow(ResultSet rs, int rowNum) throws SQLException {
					ReviewBO reviewBO = new ReviewBO();
					reviewBO.setReviewId(rs.getInt("RVW_ID"));
					reviewBO.setUserName(rs.getString("username"));
					reviewBO.setHotelName(rs.getString("HOTEL_NAME"));
					reviewBO.setRvwCommentsPros(rs.getString("RVW_CMT_PROS"));
					reviewBO.setRvwCommentsCons(rs.getString("RVW_CMT_CONS"));
					reviewBO.setRvwOverall(rs.getDouble("RVW_OVR_RATE"));
					reviewBO.setRvwCleaness(rs.getInt("RVW_CLEAN"));
					reviewBO.setRvwService(rs.getInt("RVW_SERVICE"));
					reviewBO.setRvwStaff(rs.getInt("RVW_STAFF"));
					//reviewBO.setRvwService(rs.getInt("RVW_LOC"));
					reviewBO.setRvwMoney(rs.getInt("RVW_MONEY"));
					reviewBO.setRvwFood(rs.getInt("RVW_FOOD"));
					reviewBO.setRvwDate(rs.getDate("RVW_DATE"));
					reviewBO.setRvwLocation(rs.getInt("RVW_LOC"));
					reviewBO.setRvwState(rs.getString("RVW_STATE"));
					
					
					return reviewBO;
				}
			});
		} catch (Exception e) {
			logger.error("Exception occured saveReview() : ", e);
			return null;
		}
		
	}
	
	@Override
	@Transactional(readOnly=false)
	public boolean updateReviewStateById(int reviewId, String state) {
		logger.debug("Inside Review Insert... updateReviewStateById method.");
		boolean flag = false;
		try {
	        int[] types = {Types.INTEGER, Types.VARCHAR };
			int i = getJdbcTemplate().update(env.getProperty(DBQueryConstant.UPDATE_REVIEW_BY_ID), new Object[] {reviewId, state},types);
			System.out.println("updateReviewStateById"+ i);
			if(i > 0) {
				flag = true;
			}
			
		}catch(Exception ex) {
			logger.error("Exception occured updateReviewStateById() : ", ex);
		}
		return flag;
	}
	

}
