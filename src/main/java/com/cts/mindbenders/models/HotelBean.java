package com.cts.mindbenders.models;

import java.io.Serializable;
import java.util.List;

public class HotelBean implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int hotelId;
	private String hotelCode;
	private String hotelName;
	private String shortDesc;
	private String detailedDesc;
	private String hotelAddress;
	private List<Amenity> HotelAmenities;
	private String rating;
	private String thumbImglink;
	private String slideImglink;
	private String videolink;
	private int score;
	
	public int getHotelId() {
		return hotelId;
	}
	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}
	public String getHotelCode() {
		return hotelCode;
	}
	public void setHotelCode(String hotelCode) {
		this.hotelCode = hotelCode;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getShortDesc() {
		return shortDesc;
	}
	public void setShortDesc(String shortDesc) {
		this.shortDesc = shortDesc;
	}
	public String getDetailedDesc() {
		return detailedDesc;
	}
	public void setDetailedDesc(String detailedDesc) {
		this.detailedDesc = detailedDesc;
	}
	public String getHotelAddress() {
		return hotelAddress;
	}
	public void setHotelAddress(String hotelAddress) {
		this.hotelAddress = hotelAddress;
	}
	public List<Amenity> getHotelAmenities() {
		return HotelAmenities;
	}
	public void setHotelAmenities(List<Amenity> hotelAmenities) {
		HotelAmenities = hotelAmenities;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getThumbImglink() {
		return thumbImglink;
	}
	public void setThumbImglink(String thumbImglink) {
		this.thumbImglink = thumbImglink;
	}
	public String getSlideImglink() {
		return slideImglink;
	}
	public void setSlideImglink(String slideImglink) {
		this.slideImglink = slideImglink;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getVideolink() {
		return videolink;
	}
	public void setVideolink(String videolink) {
		this.videolink = videolink;
	}
	@Override
	public String toString() {
		return "HotelBean [hotelId=" + hotelId + ", hotelCode=" + hotelCode + ", hotelName=" + hotelName
				+ ", shortDesc=" + shortDesc + ", detailedDesc=" + detailedDesc + ", hotelAddress=" + hotelAddress
				+ ", HotelAmenities=" + HotelAmenities + ", rating=" + rating + ", thumbImglink=" + thumbImglink
				+ ", slideImglink=" + slideImglink + ", videolink=" + videolink + ", score=" + score + "]";
	}
	
}
