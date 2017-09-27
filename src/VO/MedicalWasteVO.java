package VO;

public class MedicalWasteVO {
private int medicalwasteId;
private String time;
private AreaVO areaId;
private AreaVO areaName;

public int getMedicalwasteId() {
	return medicalwasteId;
}
public void setMedicalwasteId(int medicalwasteId) {
	this.medicalwasteId = medicalwasteId;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
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
