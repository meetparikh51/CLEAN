package VO;

import java.io.Serializable;

public class MessageallVO implements Serializable {
private int messageallId;
private String description;
private login_vo user_Id;
private login_vo email;
private String path;

public int getMessageallId() {
	return messageallId;
}
public void setMessageallId(int messageallId) {
	this.messageallId = messageallId;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public login_vo getUser_Id() {
	return user_Id;
}
public void setUser_Id(login_vo user_Id) {
	this.user_Id = user_Id;
}
public login_vo getEmail() {
	return email;
}
public void setEmail(login_vo email) {
	this.email = email;
}
public String getPath() {
	return path;
}
public void setPath(String path) {
	this.path = path;
}


}
