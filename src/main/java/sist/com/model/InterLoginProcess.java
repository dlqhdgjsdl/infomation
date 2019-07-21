package sist.com.model;
/*장바구니 로그인처리 (newapp) db interlogin 사용 */ 
public class InterLoginProcess {
	 private String name;
	   private String birthdate;
	   private String gender;
	   private String email;
	   private String phon;
	   private String id;
	   private String pw;
	   
	   
	   public String getName() {
	      return name;
	   }
	   public void setName(String name) {
	      this.name = name;
	   }
	   public String getBirthdate() {
	      return birthdate;
	   }
	   public void setBirthdate(String birthdate) {
	      this.birthdate = birthdate;
	   }
	   public String getGender() {
	      return gender;
	   }
	   public void setGender(String gender) {
	      this.gender = gender;
	   }
	   public String getEmail() {
	      return email;
	   }
	   public void setEmail(String email) {
	      this.email = email;
	   }
	   public String getPhon() {
	      return phon;
	   }
	   public void setPhon(String phon) {
	      this.phon = phon;
	   }
	   public String getId() {
	      return id;
	   }
	   public void setId(String id) {
	      this.id = id;
	   }
	   public String getPw() {
	      return pw;
	   }
	   public void setPw(String pw) {
	      this.pw = pw;
	   }
	@Override
	public String toString() {
		return "InterLoginProcess [name=" + name + ", birthdate=" + birthdate + ", gender=" + gender + ", email="
				+ email + ", phon=" + phon + ", id=" + id + ", pw=" + pw + "]";
	}
	public InterLoginProcess(String name, String birthdate, String gender, String email, String phon, String id,
			String pw) {
		super();
		this.name = name;
		this.birthdate = birthdate;
		this.gender = gender;
		this.email = email;
		this.phon = phon;
		this.id = id;
		this.pw = pw;
	}
	public InterLoginProcess() {
		super();
	}
	   
}
