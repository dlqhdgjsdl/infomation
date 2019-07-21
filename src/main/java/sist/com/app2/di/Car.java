package sist.com.app2.di;

public class Car {
	private String carName;
	private int carPrice;
	private int speed;
	
	
	public int getSpeed() {
		return speed;
	}
	public void setSpeed(int speed) {
		this.speed = speed;
	}
	
	public String getCarName() {
		return carName;
	}
	public void setCarName(String carName) {
		this.carName = carName;
	}
	public int getCarPrice() {
		return carPrice;
	}
	public void setCarPrice(int carPrice) {
		this.carPrice = carPrice;
	}
	public Car() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Car(String carName, int carPrice, int speed) {
		super();
		this.carName = carName;
		this.carPrice = carPrice;
		this.speed = speed;
	}
	@Override
	public String toString() {
		return "Car [carName=" + carName + ", carPrice=" + carPrice + ", speed=" + speed + "]";
	}
	
	
}
