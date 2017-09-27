package VO;

public class CompanyImageAttachmentVO {
			private int imageAttachmentId;
			private String imageName;
			private String path;
			private int companyRegistrationId;
			public int getImageAttachmentId() {
				return imageAttachmentId;
			}
			public void setImageAttachmentId(int imageAttachmentId) {
				this.imageAttachmentId = imageAttachmentId;
			}
			public String getImageName() {
				return imageName;
			}
			public void setImageName(String imageName) {
				this.imageName = imageName;
			}
			public String getPath() {
				return path;
			}
			public void setPath(String path) {
				this.path = path;
			}
			public int getCompanyRegistrationId() {
				return companyRegistrationId;
			}
			public void setCompanyRegistrationId(int companyRegistrationId) {
				this.companyRegistrationId = companyRegistrationId;
			}
}
