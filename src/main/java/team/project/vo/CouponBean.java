package team.project.vo;

public class CouponBean {
	private int    couponno;
	private int    ownerno;
	private String couponname;
	private String couponstrat;
	private int    coupondiscount;
	private int    couponquntity;
	private String coupondate;
	
	
	public CouponBean() {
		super();
	}
	public CouponBean(int couponno, int ownerno, String couponname, String couponstrat, int coupondiscount,
			int couponquntity, String coupondate) {
		super();
		this.couponno = couponno;
		this.ownerno = ownerno;
		this.couponname = couponname;
		this.couponstrat = couponstrat;
		this.coupondiscount = coupondiscount;
		this.couponquntity = couponquntity;
		this.coupondate = coupondate;
	}
	public int getCouponno() {
		return couponno;
	}
	public void setCouponno(int couponno) {
		this.couponno = couponno;
	}
	public int getOwnerno() {
		return ownerno;
	}
	public void setOwnerno(int ownerno) {
		this.ownerno = ownerno;
	}
	public String getCouponname() {
		return couponname;
	}
	public void setCouponname(String couponname) {
		this.couponname = couponname;
	}
	public String getCouponstrat() {
		return couponstrat;
	}
	public void setCouponstrat(String couponstrat) {
		this.couponstrat = couponstrat;
	}
	public int getCoupondiscount() {
		return coupondiscount;
	}
	public void setCoupondiscount(int coupondiscount) {
		this.coupondiscount = coupondiscount;
	}
	public int getCouponquntity() {
		return couponquntity;
	}
	public void setCouponquntity(int couponquntity) {
		this.couponquntity = couponquntity;
	}
	public String getCoupondate() {
		return coupondate;
	}
	public void setCoupondate(String coupondate) {
		this.coupondate = coupondate;
	}
	@Override
	public String toString() {
		return "CouponBean [couponno=" + couponno + ", ownerno=" + ownerno + ", couponname=" + couponname
				+ ", couponstrat=" + couponstrat + ", coupondiscount=" + coupondiscount + ", couponquntity="
				+ couponquntity + ", coupondate=" + coupondate + "]";
	}
	
	
}