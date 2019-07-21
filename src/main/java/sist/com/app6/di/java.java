package sist.com.app6.di;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class java {
	@Value("++")
	private String operation;
	@Value("StringArray")
	private String array;
	@Value("is a")
	private String object;
	@Value("FileStream")
	private String io;
	@Value("tcpop")
	private String newwork;
	
	@PostConstruct
	public void initMethod(){
		System.out.println("initMethod");
	}
	@PreDestroy
	public void destoryMethod(){
		System.out.println("destoryMethod");
	}
	public java() {
		super();
	}
	
	public java(String operation, String array, String object, String io, String newwork) {
		super();
		this.operation = operation;
		this.array = array;
		this.object = object;
		this.io = io;
		this.newwork = newwork;
	}
	public String getOperation() {
		return operation;
	}
	public void setOperation(String operation) {
		this.operation = operation;
	}
	public String getArray() {
		return array;
	}
	public void setArray(String array) {
		this.array = array;
	}
	public String getObject() {
		return object;
	}
	public void setObject(String object) {
		this.object = object;
	}
	public String getIo() {
		return io;
	}
	public void setIo(String io) {
		this.io = io;
	}
	public String getNewwork() {
		return newwork;
	}
	public void setNewwork(String newwork) {
		this.newwork = newwork;
	}

	@Override
	public String toString() {
		return "java [operation=" + operation + ", array=" + array + ", object=" + object + ", io=" + io + ", newwork="
				+ newwork + "]";
	}
	
	
}
