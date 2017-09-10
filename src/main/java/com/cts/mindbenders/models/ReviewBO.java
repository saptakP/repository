package com.cts.mindbenders.models;

import java.io.Serializable;
import java.util.Date;

public class ReviewBO implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private int reviewId;
	private Date rvwDate;
	private int rvwCleaness;
	private int rvwService;
	private int rvwStaff;
	private int rvwLocation;
	private int rvwMoney;
	private int rvwFood;
	private double rvwOverall; 
	private String rvwCommentsPros;
	private String rvwCommentsCons;
	private String hotelName;
	private String userName;
	private String rvwState;
	
	public int getReviewId() {
		return reviewId;
	}
	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}
	public Date getRvwDate() {
		return rvwDate;
	}
	public void setRvwDate(Date rvwDate) {
		this.rvwDate = rvwDate;
	}
	public int getRvwCleaness() {
		return rvwCleaness;
	}
	public void setRvwCleaness(int rvwCleaness) {
		this.rvwCleaness = rvwCleaness;
	}
	public int getRvwService() {
		return rvwService;
	}
	public void setRvwService(int rvwService) {
		this.rvwService = rvwService;
	}
	public int getRvwStaff() {
		return rvwStaff;
	}
	public void setRvwStaff(int rvwStaff) {
		this.rvwStaff = rvwStaff;
	}
	public int getRvwLocation() {
		return rvwLocation;
	}
	public void setRvwLocation(int rvwLocation) {
		this.rvwLocation = rvwLocation;
	}
	public int getRvwMoney() {
		return rvwMoney;
	}
	public void setRvwMoney(int rvwMoney) {
		this.rvwMoney = rvwMoney;
	}
	public int getRvwFood() {
		return rvwFood;
	}
	public void setRvwFood(int rvwFood) {
		this.rvwFood = rvwFood;
	}
	public double getRvwOverall() {
		return rvwOverall;
	}
	public void setRvwOverall(double rvwOverall) {
		this.rvwOverall = rvwOverall;
	}
	public String getRvwCommentsPros() {
		return rvwCommentsPros;
	}
	public void setRvwCommentsPros(String rvwCommentsPros) {
		this.rvwCommentsPros = rvwCommentsPros;
	}
	public String getRvwCommentsCons() {
		return rvwCommentsCons;
	}
	public void setRvwCommentsCons(String rvwCommentsCons) {
		this.rvwCommentsCons = rvwCommentsCons;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getRvwState() {
		return rvwState;
	}
	public void setRvwState(String rvwState) {
		this.rvwState = rvwState;
	}
	
	@Override
	public String toString() {
		return "ReviewBO [reviewId=" + reviewId + ", rvwDate=" + rvwDate + ", rvwCleaness=" + rvwCleaness
				+ ", rvwService=" + rvwService + ", rvwStaff=" + rvwStaff + ", rvwLocation=" + rvwLocation
				+ ", rvwMoney=" + rvwMoney + ", rvwFood=" + rvwFood + ", rvwOverall=" + rvwOverall
				+ ", rvwCommentsPros=" + rvwCommentsPros + ", rvwCommentsCons=" + rvwCommentsCons + ", hotelName="
				+ hotelName + ", userName=" + userName + ", rvwState=" + rvwState + "]";
	}
}
