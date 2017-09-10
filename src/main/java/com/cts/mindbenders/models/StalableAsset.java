package com.cts.mindbenders.models;

import java.util.Date;

public class StalableAsset {
	
	private int assetDetailsId;
	private int digitalAssetId;
	private String assetName;
	private String assetLocation;
	private Date lastRefreshDate;
	private String status;
	private Date created;
	private Date updated;
	private String hotelCode;
	
	public int getAssetDetailsId() {
		return assetDetailsId;
	}
	public void setAssetDetailsId(int assetDetailsId) {
		this.assetDetailsId = assetDetailsId;
	}
	public int getDigitalAssetId() {
		return digitalAssetId;
	}
	public void setDigitalAssetId(int digitalAssetId) {
		this.digitalAssetId = digitalAssetId;
	}
	public String getAssetName() {
		return assetName;
	}
	public void setAssetName(String assetName) {
		this.assetName = assetName;
	}
	public String getAssetLocation() {
		return assetLocation;
	}
	public void setAssetLocation(String assetLocation) {
		this.assetLocation = assetLocation;
	}
	public Date getLastRefreshDate() {
		return lastRefreshDate;
	}
	public void setLastRefreshDate(Date lastRefreshDate) {
		this.lastRefreshDate = lastRefreshDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	public Date getUpdated() {
		return updated;
	}
	public void setUpdated(Date updated) {
		this.updated = updated;
	}
	public String getHotelCode() {
		return hotelCode;
	}
	public void setHotelCode(String hotelCode) {
		this.hotelCode = hotelCode;
	}
	@Override
	public String toString() {
		return "StalableAsset [assetDetailsId=" + assetDetailsId + ", digitalAssetId=" + digitalAssetId + ", assetName="
				+ assetName + ", assetLocation=" + assetLocation + ", lastRefreshDate=" + lastRefreshDate + ", status="
				+ status + ", created=" + created + ", updated=" + updated + ", hotelCode=" + hotelCode + "]";
	}
	
	
	

}
