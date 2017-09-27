 package VO;

import java.io.Serializable;

public class AreaVO implements Serializable{
	private int areaId;
	private String areaName;
	private String description;
	private int pincode;
	private ZoneVO zoneId;
	private WardVO wardId;
	
	public int getAreaId() {
		return areaId;
	}
	public void setAreaId(int areaId) {
		this.areaId = areaId;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public ZoneVO getZoneId() {
		return zoneId;
	}
	public void setZoneId(ZoneVO zoneId) {
		this.zoneId = zoneId;
	}
	public WardVO getWardId() {
		return wardId;
	}
	public void setWardId(WardVO wardId) {
		this.wardId = wardId;
	}
	

}
