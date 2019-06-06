package team.project.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import team.project.dao.OwnerDao;
import team.project.vo.CouponBean;
import team.project.vo.ReviewBean;

@Component(value="reviewPagin")
public class ReviewPagin {
 @Resource(name="ownerDao")
 private OwnerDao dao;
 private StringBuffer sb = new StringBuffer();
 
 public List<ReviewBean> pagingAction(Model model, HashMap<String,Object>map,HttpServletRequest request,int reviewno){
		System.out.println(reviewno);
		
		    /*String query=request.getParameter("query");
			
		    String inputdata=request.getParameter("inputdata");*/
			
		   /* map.put("query", query);
		    map.put("inputdata", inputdata);*/
			map.put("reviewno",reviewno);
			List<ReviewBean> list = null;
			
		    int totalRow=dao.totalRow(reviewno);
		   
		    int pageScale=5;
		
		    int totalPage=(totalRow%pageScale)==0?(totalRow/pageScale):(totalRow/pageScale)+1;
		    if(totalRow==0)totalPage=1;	    
		    int currentPage=1;
		    String temp="1";
		    
		    temp=request.getParameter("page")==null?"1":request.getParameter("page");
		    System.out.println(temp);
		    currentPage=Integer.parseInt(temp);	
		    System.out.println("currentPage="+currentPage);
		    int start=1+(currentPage-1)*pageScale;
		    int end=pageScale+(currentPage-1)*pageScale;
		    int currentBlock=currentPage%pageScale==0?(currentPage/pageScale):(currentPage/pageScale)+1;
		    int startPage=1+(currentBlock-1)*pageScale;
		    int endPage=pageScale+(currentBlock-1)*pageScale;
		    if(totalPage<=endPage)endPage=totalPage;		   
		    map.put("start", start);
		    map.put("end", end);
		    map.put("reviewno",reviewno);
			list = dao.reviewSelect(map);
			sb.delete(0,sb.length());
			sb.append("<a onclick=\"showReview1("+reviewno+","+1+")\"><img src=\"/web/img/button/btn_first.gif\" alt=\"처음페이지\" /></a>");
			if(currentBlock>1){
				sb.append("<a onclick=\"showReview1("+reviewno+","+(startPage-1)+")\"><img src=\"/web/img/button/btn_prev.gif\" alt=\"이전\" /></a>");
			}else{
				//sb.append("<a href=\"#\"><img src=\"/web/img/button/btn_prev.gif\" alt=\"이전\" /></a>");	
			}
			sb.append("<span>");
			for(int j=startPage;j<=endPage;j++){
				if(j==currentPage){
					System.out.println("j="+j);
					sb.append("<font size=\"4\" style=\"color: red\">["+j+"] </font>");				
				}
				else{
					sb.append("<a onclick=\"showReview1("+reviewno+","+j+")\">["+j+"]</a>");
				}
			}
			sb.append("</span>");
			request.setAttribute("ppage1",sb.toString());
			return list;
			
	}
}
