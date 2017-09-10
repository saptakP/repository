package com.cts.mindbenders.models;

import java.util.Date;

public class Review {
	Date rvwDate;
	int rvwCleaness;
	int rvwService;
	int rvwStaff;
	int rvwLocation;
	int rvwMoney;
	int rvwFood;
	double rvwOverall; 
	String rvwCommentsPros;
	String rvwCommentsCons;
	String hotelcode;
	String userName;
	String rvwState;
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
	
	public String getHotelcode() {
		return hotelcode;
	}
	public void setHotelcode(String hotelcode) {
		this.hotelcode = hotelcode;
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
		// TODO Auto-generated method stub
		return (rvwCleaness + "|" + rvwService + "|" + rvwStaff + "|" + rvwLocation + "|" + rvwMoney + "|"
				+ rvwFood + "|" + rvwCommentsPros + "|" + rvwCommentsCons);
	}
	
	
}
