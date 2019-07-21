package sist.com.app5.di;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

@Component
public class SystemProcess {
	@Resource(name="member")
	private Member member;
	@Resource(name="dbServer")
	private DBServer dbServer;
	
	

	public DBServer getDbServer() {
		return dbServer;
	}

	public void setDbServer(DBServer dbServer) {
		this.dbServer = dbServer;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	@Override
	public String toString() {
		return "SystemProcess [member=" + member + ", dbServer=" + dbServer + "]";
	}
	
	
	

}
