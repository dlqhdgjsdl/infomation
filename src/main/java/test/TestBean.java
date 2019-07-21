package test;

public class TestBean {
	private int t;
	private String t1;
	private String t2;
	private String t3;
	private String t4;
	private String t5;
	public TestBean(int t, String t1, String t2, String t3, String t4, String t5) {
		super();
		this.t = t;
		this.t1 = t1;
		this.t2 = t2;
		this.t3 = t3;
		this.t4 = t4;
		this.t5 = t5;
	}
	@Override
	public String toString() {
		return "TestBean [t=" + t + ", t1=" + t1 + ", t2=" + t2 + ", t3=" + t3 + ", t4=" + t4 + ", t5=" + t5 + "]";
	}
	public int getT() {
		return t;
	}
	public void setT(int t) {
		this.t = t;
	}
	public String getT1() {
		return t1;
	}
	public void setT1(String t1) {
		this.t1 = t1;
	}
	public String getT2() {
		return t2;
	}
	public void setT2(String t2) {
		this.t2 = t2;
	}
	public String getT3() {
		return t3;
	}
	public void setT3(String t3) {
		this.t3 = t3;
	}
	public String getT4() {
		return t4;
	}
	public void setT4(String t4) {
		this.t4 = t4;
	}
	public String getT5() {
		return t5;
	}
	public void setT5(String t5) {
		this.t5 = t5;
	}
	public TestBean() {
		super();
	}
	
	
}
