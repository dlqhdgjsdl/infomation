package sist.com.model;

public class InterProduct {
	public int no;
	public String id;
	public String productname;
	public String local;
	public String price;
	public String cate;
	public String img;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public InterProduct(int no, String id, String productname, String local, String price, String cate, String img) {
		super();
		this.no = no;
		this.id = id;
		this.productname = productname;
		this.local = local;
		this.price = price;
		this.cate = cate;
		this.img = img;
	}
	public InterProduct() {
		super();
	}
	@Override
	public String toString() {
		return "InterProduct [no=" + no + ", id=" + id + ", productname=" + productname + ", local=" + local
				+ ", price=" + price + ", cate=" + cate + ", img=" + img + "]";
	}

	
	
}