package sist.com.web;

public class Test {
	public static void main(String[] args) {
		StringBuffer sb=new StringBuffer();
		sb.append("bbbbccccc");
		sb.delete(0,sb.length());
		System.out.println(sb);
		
	}
}
