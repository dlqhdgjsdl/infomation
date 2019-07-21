package sist.com.app4.di;


import org.springframework.stereotype.Component;

@Component
public class SiStore {

	Product product;

	
	
	
	
	public SiStore() {
		super();
	}

	public SiStore(Product product) {
		super();
		this.product = product;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
	
	
}
