package VO;

import java.io.Serializable;

public class EmployeeAssignAreaVO implements Serializable {
	private int assignId;
	
	private String description;
	private AddStaffVO staffId;
	private AddStaffVO name;
	private AreaVO areaId;
	private AreaVO areaName;
	
	
	
	
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
	public int getAssignId() {
		return assignId;
	}
	public void setAssignId(int assignId) {
		this.assignId = assignId;
	}
	
	
	public AddStaffVO getStaffId() {
		return staffId;
	}
	public void setStaffId(AddStaffVO staffId) {
		this.staffId = staffId;
	}
	public AddStaffVO getName() {
		return name;
	}
	public void setName(AddStaffVO name) {
		this.name = name;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
}