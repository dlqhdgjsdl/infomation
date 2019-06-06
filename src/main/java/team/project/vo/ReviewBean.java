package team.project.vo;

public class ReviewBean {
	private int reviewno;
	private int orderno;
	private int ownerno;
	private String contents;
	private String reviewdate;
	
	
	
	public ReviewBean() {
		super();
	}
	public ReviewBean(int reviewno, int orderno, int onwerno, String contents, String reviewdate) {
		super();
		this.reviewno = reviewno;
		this.orderno = orderno;
		this.ownerno = onwerno;
		this.contents = contents;
		this.reviewdate = reviewdate;
	}
	public int getReviewno() {
		return reviewno;
	}
	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}
	public int getOrderno() {
		return orderno;
	}
	public void setOrderno(int orderno) {
		this.orderno = orderno;
	}
	public int getOwnerno() {
		return ownerno;
	}
	public void setOwnerno(int onwerno) {
		this.ownerno = onwerno;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getReviewdate() {
		return reviewdate;
	}
	public void setReviewdate(String reviewdate) {
		this.reviewdate = reviewdate;
	}
	@Override
	public String toString() {
		return "ReviewBean [reviewno=" + reviewno + ", orderno=" + orderno + ", onwerno=" + ownerno + ", contents="
				+ contents + ", reviewdate=" + reviewdate + "]";
	}
	

}