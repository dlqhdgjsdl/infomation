package sist.com.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class playermain {
	public static void main(String[] args) {
		ApplicationContext app = new FileSystemXmlApplicationContext("src/main/java/sist/com/test/player.xml");
		AllPlayer allPlayer =(AllPlayer)app.getBean("palyer");
		allPlayer.name();
		allPlayer.num();
		allPlayer.nation();
	}
}
