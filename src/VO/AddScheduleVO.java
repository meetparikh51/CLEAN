package VO;

import java.io.Serializable;

public class AddScheduleVO implements Serializable {
private int scheduleId;
private String time;
private AreaVO areaId;
private AreaVO areaName;
public int getScheduleId() {
	return scheduleId;
}
public void setScheduleId(int scheduleId) {
	this.scheduleId = scheduleId;
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
