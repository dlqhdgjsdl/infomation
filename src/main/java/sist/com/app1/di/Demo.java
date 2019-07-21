package sist.com.app1.di;

public class Demo {
	
	public void add(int a){
		System.out.println("public void add(int a)");
	}
	public void add(String a){
		System.out.println("public void add(String a)");
	}
	public void add(Double a){
		System.out.println("public void add(Double a)");
	}

	//by type
	public static void main(String[] args) {
		Demo d=new Demo();
		d.add("55.5");
	}
	

}
