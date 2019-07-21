package sist.com.model;

public class EmpBean {
	private int empno;
	private String ename;
	private int sal;
	private int comm;
	private String job;
	private String hiredate;
	
	public EmpBean() {
		super();
	}
	public EmpBean(int empno, String ename, int sal, int comm, String job, String hiredate) {
		super();
		this.empno = empno;
		this.ename = ename;
		this.sal = sal;
		this.comm = comm;
		this.job = job;
		this.hiredate = hiredate;
	}
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public int getSal() {
		return sal;
	}
	public void setSal(int sal) {
		this.sal = sal;
	}
	public int getComm() {
		return comm;
	}
	public void setComm(int comm) {
		this.comm = comm;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getHiredate() {
		return hiredate;
	}
	public void setHiredate(String hiredate) {
		this.hiredate = hiredate;
	}
	@Override
	public String toString() {
		return "EmpBean [empno=" + empno + ", ename=" + ename + ", sal=" + sal + ", comm=" + comm + ", job=" + job
				+ ", hiredate=" + hiredate + "]";
	}

	
	
	
}
