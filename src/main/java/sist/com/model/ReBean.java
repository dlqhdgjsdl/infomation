package sist.com.model;

public class ReBean {
	private int    no;
	private String contents;
	private String id;
	private int    ref;
	private int    pnum;
	private int    reply;
	private String image;
	private String regdate;
	
	
	
	
	public ReBean(int no, String contents, String id, int ref, int pnum, int reply, String image, String regdate) {
		super();
		this.no = no;
		this.contents = contents;
		this.id = id;
		this.ref = ref;
		this.pnum = pnum;
		this.reply = reply;
		this.image = image;
		this.regdate = regdate;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public int getReply() {
		return reply;
	}
	public void setReply(int reply) {
		this.reply = reply;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public ReBean() {
		super();
	}
	@Override
	public String toString() {
		return "ReBean [no=" + no + ", contents=" + contents + ", id=" + id + ", ref=" + ref + ", pnum=" + pnum
				+ ", reply=" + reply + ", image=" + image + ", regdate=" + regdate + "]";
	}
	
	
}
