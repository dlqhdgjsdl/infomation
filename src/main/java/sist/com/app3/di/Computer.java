package sist.com.app3.di;

public class Computer {
	private String maker;
	private int price;
	private String model;
	private String position;
	
	public Computer() {
		super();
	}
	
	public Computer(String maker, int price, String model, String position) {
		super();
		this.maker = maker;
		this.price = price;
		this.model = model;
		this.position = position;
	}
	
	public String getMaker() {
		return maker;
	}
	
	public void setMaker(String maker) {
		this.maker = maker;
	}
	
	public int getPrice() {
		return price;
	}
	
	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getModel() {
		return model;
	}
	
	public void setModel(String model) {
		this.model = model;
	}
	
	public String getPosition() {
		return position;
	}
	
	public void setPosition(String position) {
		this.position = position;
	}

	@Override
	public String toString() {
		return "Computer [maker=" + maker + ", price=" + price + ", model=" + model + ", position=" + position + "]";
	}
	
	
	
}
