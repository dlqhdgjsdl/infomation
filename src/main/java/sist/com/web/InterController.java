package sist.com.web;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import java.io.FileOutputStream;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import sist.com.dao.interProcessDao;
import sist.com.model.InterProduct;


@Controller
public class InterController {
	@Resource(name="interprocessdao")
	private interProcessDao pdao;
	
	@RequestMapping(value="interlogin.do")
	public String loginACtionProcess(@RequestParam(value="id",required=false,defaultValue="")String id,HttpSession session){
		System.out.println(id);
		
		session.setAttribute("id",id);
		session.setMaxInactiveInterval(60);
		
		return "redirect:/list.do";
	}
	
	@RequestMapping(value="list.do")
	public String listProcess(HttpSession session,Model model){
		String id =(String)session.getAttribute("id");
		model.addAttribute("list",pdao.listAction(id));
		return "newapp/cart/productAdd";
	}
	@RequestMapping(value="interproductinsert.do",method=RequestMethod.POST)
	public String InterProductInsert(@RequestParam(value="id",required=false,defaultValue="")String id,InterProduct bean,@RequestParam(value="file1",required=false)MultipartFile file1){
		String location="C:\\Users\\dlqhd\\Desktop\\springDev\\springbegin\\springMyBatis\\SpringWeb\\src\\main\\webapp\\upload\\";
		System.out.println(file1);
		FileOutputStream fos;
		String fileDemo=file1.getOriginalFilename();
		if(fileDemo.length()>0){
			try {
				fos=new FileOutputStream(location+fileDemo);
				fos.write(file1.getBytes());
				fos.close();
				bean.setImg(file1.getOriginalFilename());
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		System.out.println("tt1");
		System.out.println(id);
		System.out.println(bean);
		
		pdao.InsertProductex1(bean);
		return "redirect:/list.do";
		
	}
	@RequestMapping(value="infoo.do")
	public String infoProcess(@RequestParam(value="no",required=true)int no,Model model){
		model.addAttribute("info",pdao.selectno(no));
		
		return "newapp/cart/infotest";
	}
	
}
