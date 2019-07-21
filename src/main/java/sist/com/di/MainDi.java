package sist.com.di;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;


//POJO:��ӹޱ��������� DI
public class MainDi {
	public static void main(String[] args) {
		ApplicationContext app=new FileSystemXmlApplicationContext("src/main/java/sist/com/di/member.xml");//��θ� �־��־�� �Ѵ�.(file not found ������ ��θ� �߸� �Է������� ������ �����̴�)
		BongBand bong=(BongBand) app.getBean("bongband");
		Map<Integer,Member>map=bong.getMap();
		
		Iterator<Entry<Integer,Member>> i = map.entrySet().iterator();
		for(;i.hasNext();){
			Entry<Integer,Member>entry=i.next();
			System.out.println("key="+entry.getKey()+"value"+entry.getValue());
		}
		
		
		
		
		
		/*Set<Member> set =((BongBand)app.getBean("bongband")).getSet();//set�� ���� �ߺ��� �ȵȴ�.
		
		Iterator<Member>iter=set.iterator();
		while(iter.hasNext()){
			System.out.println(iter.next());
		}*/
		
		/*List<Member>list=((BongBand)app.getBean("bongband")).getList(); //����Ʈ�� ���� �ߺ��� �����ϴ�.
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
		((Person)app.getBean("person1")).setJob("����");
		System.out.println((Person)app.getBean("person1"));//������ ������ �̱����� ����Ͽ��� ������ ���� �ѹ� �ٲ�� �װ��� ������ä�� ��� �ҷ��ü��� �ִ�.
		
		System.out.println((Person)app.getBean("person2"));
		((Person)app.getBean("person1")).setJob("����");
		System.out.println((Person)app.getBean("person2"));//�̱����� �ƴ� ������ Ÿ�� ���� �ҷ����� ������ ���� �ִ� ���� ��� �ҷ����� ������ ���� ������� �ʴ´�.
*/		
		
	
	}
}
