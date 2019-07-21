package sist.com.di;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;


//POJO:상속받기전에상태 DI
public class MainDi {
	public static void main(String[] args) {
		ApplicationContext app=new FileSystemXmlApplicationContext("src/main/java/sist/com/di/member.xml");//경로를 넣어주어야 한다.(file not found 에러는 경로를 잘못 입력했을때 나오는 에러이다)
		BongBand bong=(BongBand) app.getBean("bongband");
		Map<Integer,Member>map=bong.getMap();
		
		Iterator<Entry<Integer,Member>> i = map.entrySet().iterator();
		for(;i.hasNext();){
			Entry<Integer,Member>entry=i.next();
			System.out.println("key="+entry.getKey()+"value"+entry.getValue());
		}
		
		
		
		
		
		/*Set<Member> set =((BongBand)app.getBean("bongband")).getSet();//set은 값이 중복이 안된다.
		
		Iterator<Member>iter=set.iterator();
		while(iter.hasNext()){
			System.out.println(iter.next());
		}*/
		
		/*List<Member>list=((BongBand)app.getBean("bongband")).getList(); //리스트는 값이 중복이 가능하다.
		System.out.println(list);
		
		for(Member m:list){
			System.out.println(m);
		}*/
		
		
		/*Member m1=(Member)app.getBean("member1");
		Member m2=(Member)app.getBean("member2");
		Member m3=(Member)app.getBean("member3");
		System.out.println("singleton---------------------------------------------");
		System.out.println(m1);
		m1.setHit(9);
		System.out.println(m1==(Member)app.getBean("member1"));
		m1=(Member)app.getBean("member1");		
		System.out.println(m1);
		
		
		System.out.println("prototype--------------------------------------");
		System.out.println(m2);
		m2.setHit(5);
		System.out.println(m2==(Member)app.getBean("member2"));
		m2=(Member)app.getBean("member2");
		System.out.println(m2);
		
		
		
		System.out.println("-----------------------------");
		
		System.out.println(m3);
		*/
		
		/*Person person=(Person)app.getBean("person1");//object obj=new person();
		System.out.println(person);
		*/
		
	
		/*System.out.println((Person)app.getBean("person1"));
		((Person)app.getBean("person1")).setJob("사자");
		System.out.println((Person)app.getBean("person1"));//디자인 패턴인 싱글턴을 사용하였기 때문에 값이 한번 바뀌면 그값을 유지한채로 계속 불러올수가 있다.
		
		System.out.println((Person)app.getBean("person2"));
		((Person)app.getBean("person1")).setJob("사자");
		System.out.println((Person)app.getBean("person2"));//싱글턴이 아닌 프로토 타입 으로 불려졌기 때문에 원래 있던 값을 계속 불러오기 때문에 값이 변경되지 않는다.
*/		
		
	
	}
}
