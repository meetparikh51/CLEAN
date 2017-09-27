package VO;

public class RoadSideVO {
	
	private int roadsideId;
	private String name;
	private String address1;
	private String address2;
	private String time;
	private AreaVO areaId;
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getRoadsideId() {
		return roadsideId;
	}
	public void setRoadsideId(int roadsideId) {
		this.roadsideId = roadsideId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public AreaVO getAreaId() {
		return areaId;
	}
	public void setAreaId(AreaVO areaId) {
		this.areaId = areaId;
	}
	
}
