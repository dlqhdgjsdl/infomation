package team.project.controller;

import java.io.FileOutputStream;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import team.project.dao.OwnerDao;
import team.project.vo.MenuAddBean;
import team.project.vo.OwnerBean;

@RestController
public class OwnerRestController {
	@Resource(name="ownerDao") 
	private OwnerDao ownerDao;
	
	@RequestMapping(value = "insertFoodProcess.do",method=RequestMethod.POST)
	@ResponseBody
	public List<MenuAddBean> insertFoodProcess(@ModelAttribute MenuAddBean bean,
			@RequestParam(value = "file",required=false)MultipartFile file) {
		String locations = "C:\\Users\\dlqhd\\Desktop\\springDev\\springbegin\\springMyBatis\\SpringWeb\\src\\main\\webapp\\upload\\";
		                         
		FileOutputStream fos = null;
		System.out.println(bean);
		String fileName =file.getOriginalFilename();
		if (fileName.length() > 0) {
			try {
				fos=new FileOutputStream(locations+fileName);
				fos.write(file.getBytes());
                bean.setMenuimg(file.getOriginalFilename());
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally {
				try {
					fos.close();					
				} catch (Exception e2) {
					// TODO: handle exception
					e2.printStackTrace();
				}
			}
		}//
		System.out.println("PreAddMenu"+bean);
			ownerDao.addMenu(bean);
			//System.out.println(ownerDao.selectMenuList(bean));
			List<MenuAddBean>list=null;
			list=ownerDao.selectMenuList(bean);
//			ownerDao.updateProduct(bean);
		//return "redirect:/TeamProject/menuManager.jsp";
			return list;
	}
	
	@RequestMapping(value = "selectFoodProcess.do",method=RequestMethod.POST)
	@ResponseBody
	public List<MenuAddBean> selectFoodProcess(int ownerno,Model model){
		OwnerBean bean=ownerDao.selectOwner(ownerno);
		MenuAddBean menubean=new MenuAddBean();
		menubean.setOwnermenucate(bean.getOwnermenucate());
		menubean.setOwnerno(ownerno);        
		model.addAttribute("ownermenucate",menubean.getOwnermenucate());
		System.out.println("loadListMenu"+ownerDao.selectMenuList(menubean));
		return ownerDao.selectMenuList(menubean);
		
	}
	
}
