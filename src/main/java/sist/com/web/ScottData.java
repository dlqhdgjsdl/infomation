package sist.com.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import sist.com.model.EmpBean;
import sist.com.model.StudentBean;

@Component
public class ScottData {

	public List<EmpBean>selectEmp(){
		List<EmpBean> list=new ArrayList<EmpBean>();
		list.add(new EmpBean(7788, "smith", 5000, 300, "manager", "2018/5/1"));
		list.add(new EmpBean(7789, "allen", 7000, 200, "doctor", "2018/1/1"));
		list.add(new EmpBean(7790, "blanke", 3000, 300, "student", "2018/2/1"));
		
		return list;
		
	}
	public List<StudentBean>selectStudent(){
		List<StudentBean> list=new ArrayList<StudentBean>();
		list.add(new StudentBean(3216, "이규환","GH", "941015-1010457", "940314", "4", 99.5, 178.8));
		list.add(new StudentBean(1254, "박진하","PARK", "980215-2010457", "980314", "1", 55, 188.8));
		list.add(new StudentBean(5671, "김현중","kim", "741015-1010457", "740314", "1", 55.5, 198.8));
			
		return list;
		
	}
	public Object getInfo(int no){
		List list=null;		
		if(String.valueOf(no).charAt(0)=='7'){
			list=selectEmp();
		}else{
			list=selectStudent();
		}
		for(int i=0;i<list.size();i++){
			if(String.valueOf(no).charAt(0)=='7'){
				if(((EmpBean)list.get(i)).getEmpno()==no){
					return ((EmpBean) list.get(i));
				}
			}else{
				if(((StudentBean)list.get(i)).getStudno()==no){
					return ((StudentBean)list.get(i));
				}
			}
			
		}		
		return null;
	}
	
}










