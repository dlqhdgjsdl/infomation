package sist.com.java.test.di;

public class TestCar {
	private String carname;
	private String color;
	private int price;
	
	
	
	
	public TestCar() {
		super();
	}
	public TestCar(String carname, String color, int price) {
		super();
		this.carname = carname;
		this.color = color;
		this.price = price;
	}
	public String getCarname() {
		return carname;
	}
	public void setCarname(String carname) {
		this.carname = carname;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "TestCar [carname=" + carname + ", color=" + color + ", price=" + price + "]";
	}
	
	
	
}
