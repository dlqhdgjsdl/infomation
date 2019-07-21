package sist.com.app4.di;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
@Component
@Scope(value="singleton")
public class Product {
	@Value(value="µþ±â")
	private String produnctName;
	@Value(value="Á¦ÁÖµµ")
	private String productigin;
	@Value(value="2019/8/30")
	private String productInput;
	@Value(value="787878787887")
	private String productProce;
	
	
	
	
	
	
	public String getProdunctName() {
		return produnctName;
	}
	public void setProdunctName(String produnctName) {
		this.produnctName = produnctName;
	}
	public String getProductigin() {
		return productigin;
	}
	public void setProductigin(String productigin) {
		this.productigin = productigin;
	}
	public String getProductInput() {
		return productInput;
	}
	public void setProductInput(String productInput) {
		this.productInput = productInput;
	}
	public String getProductProce() {
		return productProce;
	}
	public void setProductProce(String productProce) {
		this.productProce = productProce;
	}
	@Override
	public String toString() {
		return "Product [produnctName=" + produnctName + ", productigin=" + productigin + ", productInput="
				+ productInput + ", productProce=" + productProce + "]";
	}
	
	
}
