package sist.com.app5.di;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class Member {
	@Value("blue")
	private String id;
	@Value("aa")
	private String memberName;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", memberName=" + memberName + "]";
	}
	
	

}
