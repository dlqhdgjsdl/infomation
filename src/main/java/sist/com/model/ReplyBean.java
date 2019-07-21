package sist.com.model;

public class ReplyBean {
	private int    no;
	private String contents;
	private String id;
	private int    step;
	private int    ref;
	private int    pnum;
	private int    reply;
	private String image;
	private String regdate;
	private int    infopk;
	private String job;
	
	
	
	
	
	
	
	
	public ReplyBean() {
		super();
	}
	public ReplyBean(int no, String contents, String id, int step, int ref, int pnum, int reply, String image,
			String regdate, int infopk, String job) {
		super();
		this.no = no;
		this.contents = contents;
		this.id = id;
		this.step = step;
		this.ref = ref;
		this.pnum = pnum;
		this.reply = reply;
		this.image = image;
		this.regdate = regdate;
		this.infopk = infopk;
		this.job = job;
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
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
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
	public int getInfopk() {
		return infopk;
	}
	public void setInfopk(int infopk) {
		this.infopk = infopk;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	@Override
	public String toString() {
		return "ReplyBean [no=" + no + ", contents=" + contents + ", id=" + id + ", step=" + step + ", ref=" + ref
				+ ", pnum=" + pnum + ", reply=" + reply + ", image=" + image + ", regdate=" + regdate + ", infopk="
				+ infopk + ", job=" + job + "]";
	}
	
	

	
	
}
	
	