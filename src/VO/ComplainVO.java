package VO;

import java.io.Serializable;

public class ComplainVO implements Serializable{
	private int complainId;
	private String subject;
	private String description;
	private login_vo user_Id;
	public login_vo getUser_Id() {
		return user_Id;
	}
	public void setUser_Id(login_vo user_Id) {
		this.user_Id = user_Id;
	}
	public int getComplainId() {
		return complainId;
	}
	public void setComplainId(int complainId) {
		this.complainId = complainId;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}
