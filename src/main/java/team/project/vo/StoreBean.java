package team.project.vo;

public class StoreBean {
	private int    ownerno;
	private String storename;
	private String storestart;
	private String storeend;
	private String storeaddr;
	private String storephone;
	private String storeimg;
	

	public int getOwnerno() {
		return ownerno;
	}

	public void setOwnerno(int ownerno) {
		this.ownerno = ownerno;
	}

	public String getStorename() {
		return storename;
	}

	public void setStorename(String storename) {
		this.storename = storename;
	}


	public String getStorestart() {
		return storestart;
	}

	public void setStorestart(String storestart) {
		this.storestart = storestart;
	}

	public String getStoreend() {
		return storeend;
	}

	public void setStoreend(String storeend) {
		this.storeend = storeend;
	}

	public String getStoreaddr() {
		return storeaddr;
	}

	public void setStoreaddr(String storeaddr) {
		this.storeaddr = storeaddr;
	}

	public String getStorephone() {
		return storephone;
	}

	public void setStorephone(String storephone) {
		this.storephone = storephone;
	}

	public String getStoreimg() {
		return storeimg;
	}

	public void setStoreimg(String storeimg) {
		this.storeimg = storeimg;
	}

	@Override
	public String toString() {
		return "StoreBean [ownerno=" + ownerno + ", storename=" + storename + ", storestart=" + storestart
				+ ", storeend=" + storeend + ", storeaddr=" + storeaddr + ", storephone=" + storephone + ", storeimg="
				+ storeimg + "]";
	}








}
