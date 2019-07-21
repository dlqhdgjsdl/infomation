package sist.com.test;

public class test {
	private String name;
	private int price;
	private int qulity;
	
	public test() {
		super();
	}





	public String getName() {
		return name;
	}





	public void setName(String name) {
		this.name = name;
	}





	public int getPrice() {
		return price;
	}





	public void setPrice(int price) {
		this.price = price;
	}





	public int getQulity() {
		return qulity;
	}

	public void setQulity(int qulity) {
		this.qulity = qulity;
	}
	public test(String name, int price, int qulity) {
		super();
		this.name = name;
		this.price = price;
		this.qulity = qulity;
	}
	@Override
	public String toString() {
		return "test [name=" + name + ", price=" + price + ", qulity=" + qulity + "]";
	}
	
	
	
}
