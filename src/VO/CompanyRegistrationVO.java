package VO;

import java.io.Serializable;

public class CompanyRegistrationVO implements Serializable {
	private int companyRegistrationId;
	private int registrationNo;
	private String companyName;
	private String url;
	private String path;
	private String address1;
	private String address2;
	private String email;
	private int phone;
	private String password;
	private String retypePassword;
	private login_vo user_Id;

	
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public login_vo getUser_Id() {
		return user_Id;
	}
	public void setUser_Id(login_vo user_Id) {
		this.user_Id = user_Id;
	}
	public int getCompanyRegistrationId() {
		return companyRegistrationId;
	}
	public void setCompanyRegistrationId(int companyRegistrationId) {
		this.companyRegistrationId = companyRegistrationId;
	}
	public int getRegistrationNo() {
		return registrationNo;
	}
	public void setRegistrationNo(int registrationNo) {
		this.registrationNo = registrationNo;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRetypePassword() {
		return retypePassword;
	}
	public void setRetypePassword(String retypePassword) {
		this.retypePassword = retypePassword;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	

}
