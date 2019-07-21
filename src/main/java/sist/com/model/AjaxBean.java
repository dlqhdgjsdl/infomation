package sist.com.model;

public class AjaxBean {
	private int no;
	private String subject;
	private int socre;
	private String regdate;
	
	
	
	
	public AjaxBean() {
		super();
	}
	
	public AjaxBean(int no, String subject, int socre, String regdate) {
		super();
		this.no = no;
		this.subject = subject;
		this.socre = socre;
		this.regdate = regdate;
	}
	
	public int getNo() {
		return no;
	}
	
	public void setNo(int no) {
		this.no = no;
	}
	
	public String getSubject() {
		return subject;
	}
	
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	public int getsocre() {
		return socre;
	}
	
	public void setsocre(int socre) {
		this.socre = socre;
	}
	
	public String getRegdate() {
		return regdate;
	}
	
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "AjaxBean [no=" + no + ", subject=" + subject + ", socre=" + socre + ", regdate=" + regdate + "]";
	}
	
	
}
