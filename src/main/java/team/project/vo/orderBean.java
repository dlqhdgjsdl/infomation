package team.project.vo;

public class orderBean {
private int orderno;
private int userno;
private int ownerno;
private String orderdate;
private int sumprice;
private String addr;
private String pay;
private String coupon;
private String orderrequest;
private String delichoose;
public int getOrderno() {
	return orderno;
}
public void setOrderno(int orderno) {
	this.orderno = orderno;
}
public int getUserno() {
	return userno;
}
public void setUserno(int userno) {
	this.userno = userno;
}
public int getOwnerno() {
	return ownerno;
}
public void setOwnerno(int ownerno) {
	this.ownerno = ownerno;
}
public String getOrderdate() {
	return orderdate;
}
public void setOrderdate(String orderdate) {
	this.orderdate = orderdate;
}
public int getSumprice() {
	return sumprice;
}
public void setSumprice(int sumprice) {
	this.sumprice = sumprice;
}
public String getAddr() {
	return addr;
}
public void setAddr(String addr) {
	this.addr = addr;
}
public String getPay() {
	return pay;
}
public void setPay(String pay) {
	this.pay = pay;
}
public String getCoupon() {
	return coupon;
}
public void setCoupon(String coupon) {
	this.coupon = coupon;
}
public String getOrderrequest() {
	return orderrequest;
}
public void setOrderrequest(String orderrequest) {
	this.orderrequest = orderrequest;
}
public String getDelichoose() {
	return delichoose;
}
public void setDelichoose(String delichoose) {
	this.delichoose = delichoose;
}
public orderBean(int orderno, int userno, int ownerno, String orderdate, int sumprice, String addr, String pay,
		String coupon, String orderrequest, String delichoose) {
	super();
	this.orderno = orderno;
	this.userno = userno;
	this.ownerno = ownerno;
	this.orderdate = orderdate;
	this.sumprice = sumprice;
	this.addr = addr;
	this.pay = pay;
	this.coupon = coupon;
	this.orderrequest = orderrequest;
	this.delichoose = delichoose;
}
public orderBean() {
	super();
}
@Override
public String toString() {
	return "orderBean [orderno=" + orderno + ", userno=" + userno + ", ownerno=" + ownerno + ", orderdate=" + orderdate
			+ ", sumprice=" + sumprice + ", addr=" + addr + ", pay=" + pay + ", coupon=" + coupon + ", orderrequest="
			+ orderrequest + ", delichoose=" + delichoose + "]";
}

}
