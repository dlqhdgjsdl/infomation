package test;

public class testreplybean {
	private String id;
	private String reply;
	private int no;
	
	
	
	
	
	
	public testreplybean(String id, String reply, int no) {
		super();
		this.id = id;
		this.reply = reply;
		this.no = no;
	}
	public testreplybean() {
		super();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	@Override
	public String toString() {
		return "testreplybean [id=" + id + ", reply=" + reply + ", no=" + no + "]";
	}
	
	
	
	
	
	
	
	
}
