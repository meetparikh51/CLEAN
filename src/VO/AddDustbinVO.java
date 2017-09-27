package VO;

public class AddDustbinVO {
private int dustbinId;
private int pincode;
private int latitude;
private int longitude;
private ZoneVO zoneId;
private ZoneVO zoneName;
private WardVO wardId;
private WardVO wardName;
private AreaVO areaId;
private AreaVO areaName;
public ZoneVO getZoneId() {
	return zoneId;
}
public void setZoneId(ZoneVO zoneId) {
	this.zoneId = zoneId;
}
public ZoneVO getZoneName() {
	return zoneName;
}
public void setZoneName(ZoneVO zoneName) {
	this.zoneName = zoneName;
}
public WardVO getWardId() {
	return wardId;
}
public void setWardId(WardVO wardId) {
	this.wardId = wardId;
}
public WardVO getWardName() {
	return wardName;
}
public void setWardName(WardVO wardName) {
	this.wardName = wardName;
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
public int getDustbinId() {
	return dustbinId;
}
public void setDustbinId(int dustbinId) {
	this.dustbinId = dustbinId;
}
public int getPincode() {
	return pincode;
}
public void setPincode(int pincode) {
	this.pincode = pincode;
}
public int getLatitude() {
	return latitude;
}
public void setLatitude(int latitude) {
	this.latitude = latitude;
}
public int getLongitude() {
	return longitude;
}
public void setLongitude(int longitude) {
	this.longitude = longitude;
}

}
