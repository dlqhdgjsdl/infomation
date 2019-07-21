package sist.com.model;

public class StudentBean {
	private int studno;
	private String name;
	private String userId;
	private String idnum;
	private String birthdate;
	private String grade;
	private double weight;
	private double height;
	
	
	public StudentBean() {
		super();
	}
	
	public StudentBean(int studno, String name, String userId, String idnum, String birthdate, String grade,
			double weight, double height) {
		super();
		this.studno = studno;
		this.name = name;
		this.userId = userId;
		this.idnum = idnum;
		this.birthdate = birthdate;
		this.grade = grade;
		this.weight = weight;
		this.height = height;
	}

	public int getStudno() {
		return studno;
	}
	public void setStudno(int studno) {
		this.studno = studno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getIdnum() {
		return idnum;
	}
	public void setIdnum(String idnum) {
		this.idnum = idnum;
	}
	public String getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	@Override
	public String toString() {
		return "StudentBean [studno=" + studno + ", name=" + name + ", userId=" + userId + ", idnum=" + idnum
				+ ", birthdate=" + birthdate + ", grade=" + grade + ", weight=" + weight + ", height=" + height + "]";
	}
	

}
