package VO;

public class MessageAttachmentVO {
	private int messageAttachmentId;
	private String messageName;
	private String path;
	private int messageId;
	public int getMessageAttachmentId() {
		return messageAttachmentId;
	}
	public void setMessageAttachmentId(int messageAttachmentId) {
		this.messageAttachmentId = messageAttachmentId;
	}
	public String getMessageName() {
		return messageName;
	}
	public void setMessageName(String messageName) {
		this.messageName = messageName;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public int getMessageId() {
		return messageId;
	}
	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}
}
