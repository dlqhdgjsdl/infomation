package sist.com.di;

public class Member {
	private String id;
	private String name;
	private String email;
	private String address;
	private int hit;
	private String date;
	
	
	
	
	public Member() {
		System.out.println("기본생성자");
	
	}
	public Member(String id, String name, String email, String address, int hit, String date) {

		System.out.println("member");
		this.id = id;
		this.name = name;
		this.email = email;
		this.address = address;
		this.hit = hit;
		this.date = date;
	}
	public void initMember(){
		System.out.println("initMember");
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", name=" + name + ", email=" + email + ", address=" + address + ", hit=" + hit
				+ ", date=" + date + "]";
	}
	
	
	
	
}
