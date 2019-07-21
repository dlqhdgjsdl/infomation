package sist.com.web;

public class dataBean {
	private String id;
	private String name;
	private String addr;
	private String pwd;
	
	
	
	public dataBean() {
		super();
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getAddr() {
		return addr;
	}



	public void setAddr(String addr) {
		this.addr = addr;
	}



	public String getPwd() {
		return pwd;
	}



	public void setPwd(String pwd) {
		this.pwd = pwd;
	}



	public dataBean(String id, String name, String addr, String pwd) {
		super();
		this.id = id;
		this.name = name;
		this.addr = addr;
		this.pwd = pwd;
	}



	@Override
	public String toString() {
		return "dataBean [id=" + id + ", name=" + name + ", addr=" + addr + ", pwd=" + pwd + "]";
	}
	
	
}
