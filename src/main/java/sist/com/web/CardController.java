package sist.com.web;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import sist.com.dao.CardDao;
import sist.com.dao.ReplyDao;
import sist.com.model.CardBean;
import sist.com.model.ReplyBean;

@Controller
@SessionAttributes(value={"info"})
public class CardController {
	@Resource(name="cardDao")
	private CardDao dao;
	@Resource(name="replyDao")
	private ReplyDao rdao;
	@Inject 
	private PaginProcess paging;
	
	@RequestMapping(value="cardInsert.do",method=RequestMethod.POST)
	public String insertCard(CardBean bean,@RequestParam(value="file1",required=false)MultipartFile file,@RequestParam(value="file2",required=false)MultipartFile file2){//업로드(upload),인서트(insert) 하는 부분 
		 String location="D:\\springDEV\\springBegin\\springMyBatis\\SpringSi\\src\\main\\webapp\\upload\\";
		 FileOutputStream fos;
		 FileOutputStream fos2;
		 String fileDemo=file.getOriginalFilename();
		 String fileDemo2=file2.getOriginalFilename();
		 if(fileDemo.length()>0 && fileDemo2.length()>0){
			 try {
				fos=new FileOutputStream(location+fileDemo);
				fos.write(file.getBytes());
				fos.close();
				fos2=new FileOutputStream(location+fileDemo2);
				fos2.write(file2.getBytes());
				fos2.close();
				bean.setFace(file.getOriginalFilename()+"#"+file2.getOriginalFilename());
				
			} catch (Exception e) {
				// TODO: handle exception
			e.printStackTrace();
				}
		 }
		 
		
		 dao.insertCard(bean);
		 System.out.println(bean);
		
		return "redirect:cardList.do";
	}
	
	@RequestMapping(value="cardList.do")	
	public ModelAndView selectCard(Model model, @RequestParam(value="query",required=false)String query,@RequestParam(value="data",required=false)String data,HttpServletRequest request){
		System.out.println(request);

		ModelAndView modelAndView=new ModelAndView();
	    HashMap<String, Object>map=new HashMap<String, Object>();
	    map.put("query", query);
	    map.put("data", data);	    
		modelAndView.setViewName("springApp/cardlist");
		
		modelAndView.addObject("cardList", paging.pagingAction(model,map,request));
		return modelAndView;		
	
	}
	@RequestMapping(value="hit.do")
	public String updateHitProcess(Model model,@RequestParam(value="page",required=false,defaultValue="1")String page,@RequestParam(value="no",required=true,defaultValue="0")int no,String job){
		System.out.println("HitDaoAction");
		dao.updateHitCard(no);
		
		return "redirect:info.do?page="+page+"&no="+no+"&job="+job;
		
	}
	
	@RequestMapping(value="info.do")
	public String infoProcess(Model model, @RequestParam(value="page",required=false,defaultValue="1")
	String page,@RequestParam(value="no",required=true,defaultValue="0")int no,
	String job){
		model.addAttribute("info", dao.selectInfo(no));
		model.addAttribute("rList", dao.selectReply(no));
		return "springApp/info";
	}
	
	@RequestMapping(value="deletedata.do")
	 public String deletedata(Model model,@RequestParam(value="no",required=false,defaultValue="0")int no){
		dao.delete(no);
		return "redirect:cardList.do";
	 }
		@RequestMapping(value="modify.do")
		public String modify(Model model,int no){
			System.out.println(no);
			model.addAttribute("info",dao.selectInfo(no));
			return "springApp/CardEdit";
			
		}
		@RequestMapping(value="modifyy.do")
		public String modifyy(CardBean cardBean, Model model){
			
			dao.modify(cardBean);
			model.addAttribute("info", dao.selectInfo(cardBean.getNo()));
			return "springApp/info";
		}
		
		@RequestMapping(value="download.do")
		public ModelAndView downloadProcess(@RequestParam(value="fileName",required=false,defaultValue="1.jpg")String fileName){
			String locations="D:\\springDEV\\springBegin\\springMyBatis\\SpringSi\\src\\main\\webapp\\upload\\";
			File file= new File(locations+fileName);
			return new ModelAndView("download","downloadFile",file);//뷰와모델이름은 아무거나 써도 상관이 없음 
			}
		@RequestMapping(value="replyInsert.do")	
		public String replyInsertProcess(Model model,ReplyBean bean){
			model.addAttribute("info", dao.selectInfo(bean.getInfopk()));
			int no=dao.replygetSequence();
			bean.setNo(no);
			if(bean.getJob().equals("new")){
				bean.setRef(no);
				bean.setPnum(no);
			}
			System.out.println(bean);
			dao.replyInsertCard(bean);
			
			return "redirect:info.do?no="+bean.getInfopk()+"&page=1";
		}
	}
	
	

