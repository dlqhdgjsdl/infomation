package sist.com.model;

public class CardBean {
	private int    no;
	private String companyName;
	private String name;
	private String tel;
	private String dept;
	private String addr;
	private String face;
	private String email;
	private int    hit;
	private String message;
	private String regdate;
	
	
	
	
	public CardBean(int no, String companyName, String name, String tel) {
		super();
		this.no = no;
		this.companyName = companyName;
		this.name = name;
		this.tel = tel;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getFace() {
		return face;
	}
	public void setFace(String face) {
		this.face = face;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "CardBean [no=" + no + ", companyName=" + companyName + ", name=" + name + ", tel=" + tel + ", dept="
				+ dept + ", addr=" + addr + ", face=" + face + ", email=" + email + ", hit=" + hit + ", message="
				+ message + ", regdate=" + regdate + "]";
	}
	
	
	
	
}
