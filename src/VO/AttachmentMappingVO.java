package VO;

import java.io.Serializable;

public class AttachmentMappingVO implements Serializable {
	private int attachmentMappingID;
	private String attachmentName;
	private String path;
	private CompanyRegistrationVO attachment;
	private PostWasteVO attachment1;
	
	
	public PostWasteVO getAttachment1() {
		return attachment1;
	}
	public void setAttachment1(PostWasteVO attachment1) {
		this.attachment1 = attachment1;
	}
	public int getAttachmentMappingID() {
		return attachmentMappingID;
	}
	public void setAttachmentMappingID(int attachmentMappingID) {
		this.attachmentMappingID = attachmentMappingID;
	}
	public String getAttachmentName() {
		return attachmentName;
	}
	public void setAttachmentName(String attachmentName) {
		this.attachmentName = attachmentName;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public CompanyRegistrationVO getAttachment() {
		return attachment;
	}
	public void setAttachment(CompanyRegistrationVO attachment) {
		this.attachment = attachment;
	}
	
	}
	
	

