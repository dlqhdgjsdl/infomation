package sist.com.server.di.example;

public class StateServer {
	private String serverUrl;
	private int port;
	private String dbaName;
	private String account;
	private String password;
	
	
	
	
	public StateServer() {
		super();
	}
	public StateServer(String serverUrl, int port, String dbaName, String account, String password) {
		super();
		this.serverUrl = serverUrl;
		this.port = port;
		this.dbaName = dbaName;
		this.account = account;
		this.password = password;
	}
	public String getServerUrl() {
		return serverUrl;
	}
	public void setServerUrl(String serverUrl) {
		this.serverUrl = serverUrl;
	}
	public int getPort() {
		return port;
	}
	public void setPort(int port) {
		this.port = port;
	}
	public String getDbaName() {
		return dbaName;
	}
	public void setDbaName(String dbaName) {
		this.dbaName = dbaName;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "StateServer [serverUrl=" + serverUrl + ", port=" + port + ", dbaName=" + dbaName + ", account="
				+ account + ", password=" + password + "]";
	}
	
	
	
}
