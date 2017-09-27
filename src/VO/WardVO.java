package VO;

import java.io.Serializable;

public class WardVO implements Serializable {
	private int wardId;
	private String wardName;
	private String description;
	private ZoneVO zoneId;
	private ZoneVO zoneName;
	public int getWardId() {
		return wardId;
	}
	public void setWardId(int wardId) {
		this.wardId = wardId;
	}
	public String getWardName() {
		return wardName;
	}
	public void setWardName(String wardName) {
		this.wardName = wardName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
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
	
}
