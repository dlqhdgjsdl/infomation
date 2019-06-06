package team.project.vo;

public class OwnerBean {

	    private int    ownerno;
	    private String ownerid;
	    private String ownerpass;
	    private String ownername;
	    private String ownerphone;
	    private String ownermenucate;
	    private String owneremail;
	    private String owneraddr;
		public int getOwnerno() {
			return ownerno;
		}
		public void setOwnerno(int ownerno) {
			this.ownerno = ownerno;
		}
		public String getOwnerid() {
			return ownerid;
		}
		public void setOwnerid(String ownerid) {
			this.ownerid = ownerid;
		}
		public String getOwnerpass() {
			return ownerpass;
		}
		public void setOwnerpass(String ownerpass) {
			this.ownerpass = ownerpass;
		}
		public String getOwnername() {
			return ownername;
		}
		public void setOwnername(String ownername) {
			this.ownername = ownername;
		}
		public String getOwnerphone() {
			return ownerphone;
		}
		public void setOwnerphone(String ownerphone) {
			this.ownerphone = ownerphone;
		}
		public String getOwnermenucate() {
			return ownermenucate;
		}
		public void setOwnermenucate(String ownermenucate) {
			this.ownermenucate = ownermenucate;
		}
		public String getOwneremail() {
			return owneremail;
		}
		public void setOwneremail(String owneremail) {
			this.owneremail = owneremail;
		}
		public String getOwneraddr() {
			return owneraddr;
		}
		public void setOwneraddr(String owneraddr) {
			this.owneraddr = owneraddr;
		}
		@Override
		public String toString() {
			return "OwnerBean [ownerno=" + ownerno + ", ownerid=" + ownerid + ", ownerpass=" + ownerpass
					+ ", ownername=" + ownername + ", ownerphone=" + ownerphone + ", ownermenucate=" + ownermenucate
					+ ", owneremail=" + owneremail + ", owneraddr=" + owneraddr + "]";
		}
	    
	    
	    

	
}
