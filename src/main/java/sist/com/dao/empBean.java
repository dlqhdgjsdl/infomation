package sist.com.dao;

public class empBean {
	private int EMPNO;
	private String ENAME;
	private String JOB;
	public int getEMPNO() {
		return EMPNO;
	}
	public void setEMPNO(int eMPNO) {
		EMPNO = eMPNO;
	}
	public String getENAME() {
		return ENAME;
	}
	public void setENAME(String eNAME) {
		ENAME = eNAME;
	}
	public String getJOB() {
		return JOB;
	}
	public void setJOB(String jOB) {
		JOB = jOB;
	}
	public empBean(int eMPNO, String eNAME, String jOB) {
		super();
		EMPNO = eMPNO;
		ENAME = eNAME;
		JOB = jOB;
	}
	public empBean() {
		super();
	}
	
	
}
