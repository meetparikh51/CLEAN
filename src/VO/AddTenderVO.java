package VO;

import java.io.Serializable;

public class AddTenderVO implements Serializable{
private int tenderId;
private int tenderNo;
private String tenderName;
private String description;
private String dateFrom;
private String dateTo;
private int tenderAmount;
private int staffNumber;
private int depositedMoney;
private AreaVO areaId;
private AreaVO areaName;
public int getTenderId() {
	return tenderId;
}
public void setTenderId(int tenderId) {
	this.tenderId = tenderId;
}
public int getTenderNo() {
	return tenderNo;
}
public void setTenderNo(int tenderNo) {
	this.tenderNo = tenderNo;
}
public String getTenderName() {
	return tenderName;
}
public void setTenderName(String tenderName) {
	this.tenderName = tenderName;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getDateFrom() {
	return dateFrom;
}
public void setDateFrom(String dateFrom) {
	this.dateFrom = dateFrom;
}
public String getDateTo() {
	return dateTo;
}
public void setDateTo(String dateTo) {
	this.dateTo = dateTo;
}

public int getTenderAmount() {
	return tenderAmount;
}
public void setTenderAmount(int tenderAmount) {
	this.tenderAmount = tenderAmount;
}
public int getStaffNumber() {
	return staffNumber;
}
public void setStaffNumber(int staffNumber) {
	this.staffNumber = staffNumber;
}
public int getDepositedMoney() {
	return depositedMoney;
}
public void setDepositedMoney(int depositedMoney) {
	this.depositedMoney = depositedMoney;
}
public AreaVO getAreaId() {
	return areaId;
}
public void setAreaId(AreaVO areaId) {
	this.areaId = areaId;
}
public AreaVO getAreaName() {
	return areaName;
}
public void setAreaName(AreaVO areaName) {
	this.areaName = areaName;
}


}
