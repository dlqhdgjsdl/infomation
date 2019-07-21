package sist.com.app2.di;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Required;

public class CarCenter {
	private Car car;

	public Car getCar() {
		return car;
	}
	@Required
	@Autowired
	@Resource(name="car2")
	/*@Qualifier(value="car1")*/
	public void setCar(Car car) {
		this.car = car;
	}

	public CarCenter(Car car) {
		super();
		this.car = car;
	}

	public CarCenter() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
