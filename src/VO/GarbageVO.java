package VO;

import java.util.Date;

public class GarbageVO {
	private int requestId;
	private String garbageType;
	private Date date;
	private int phoneNo;
	private String description;
	private int userId;
	public int getRequestId() {
		return requestId;
	}
	public void setRequestId(int requestId) {
		this.requestId = requestId;
	}
	public String getGarbageType() {
		return garbageType;
	}
	public void setGarbageType(String garbageType) {
		this.garbageType = garbageType;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(int phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
}
