package VO;

public class AssignAreaVO {
	private int assignAreaId;
	private String employeeId;
	private String area;
	private String description;
	private AddStaffVO staffId;
	private AddStaffVO name;
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
	public int getAssignAreaId() {
		return assignAreaId;
	}
	public void setAssignAreaId(int assignAreaId) {
		this.assignAreaId = assignAreaId;
	}
	public String getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	

}
