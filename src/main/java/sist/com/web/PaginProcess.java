package sist.com.web;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.propertyeditors.CurrencyEditor;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import sist.com.dao.CardDao;
import sist.com.model.CardBean;

@Component
public class PaginProcess {
	@Resource(name="cardDao")
	private CardDao dao;
	private StringBuffer sb = new StringBuffer();
	public List<CardBean> pagingAction(Model model, HashMap<String,Object>map,HttpServletRequest request){
		
		//System.out.println(model);
		//System.out.println(map);
		//System.out.println(request);
		
		    String query=request.getParameter("query");
			
		    String data=request.getParameter("data");
			
		    map.put("query", query);
		    map.put("data", data);
			
			List<CardBean> list = null;
			
		    int totalRow=dao.getTotalRowCard();
		   
		    int pageScale=2;
		
		    int totalPage=(totalRow%pageScale)==0?(totalRow/pageScale):(totalRow/pageScale)+1;
		    if(totalRow==0)totalPage=1;	    
		    int currentPage=1;
		    String temp="1";
		    
		    temp=request.getParameter("page")==null?"1":request.getParameter("page");
		    currentPage=Integer.parseInt(temp);		    
		    int start=1+(currentPage-1)*pageScale;
		    int end=pageScale+(currentPage-1)*pageScale;
		    int currentBlock=currentPage%pageScale==0?(currentPage/pageScale):(currentPage/pageScale)+1;
		    int startPage=1+(currentBlock-1)*pageScale;
		    int endPage=pageScale+(currentBlock-1)*pageScale;
		    if(totalPage<=endPage)endPage=totalPage;		   
		    map.put("start", start);
		    map.put("end", end);	    
			list = dao.selectCard(map);
			sb.delete(0,sb.length());
			sb.append("<a href=\"/web/cardList.do?page=1\"><img src=\"/web/img/button/btn_first.gif\" alt=\"처음페이지\" /></a>");
			if(currentBlock>1){
			sb.append("<a href=\"/web/cardList.do?page="+(startPage-1)+"\"><img src=\"/web/img/button/btn_prev.gif\" alt=\"이전\" /></a>");
			}else{
				sb.append("<a href=\"#\"><img src=\"/web/img/button/btn_prev.gif\" alt=\"이전\" /></a>");	
			}
			sb.append("<span>");
			for(int i=startPage;i<=endPage;i++){
				if(i==currentPage){
					sb.append("<font size=\"4\" style=\"color: red\">["+i+"] </font>");				
				}
			else{
				//sb.append("<a href=\"/web/cardList.do?page="+i+"\">["+i+"]</a>");
				sb.append("<a href='/web/cardList.do?page="+i+"'>["+i+"]</a>");
			}
			}
			sb.append("<span>");
			model.addAttribute("page",sb.toString());
			return list;
			
	}
	/*
	<a href="#"><img src="/web/img/button/btn_prev.gif" alt="이전" /></a>
	
	<span>
		<a href="#">1</a>
		<a href="#">2</a>
		<a href="#">3</a>
		<strong>4</strong>
		<a href="#">5</a>
		<a href="#">6</a>
		<a href="#">7</a>
		<a href="#">8</a>
		<a href="#">9</a>
	</span>				

	<a href="#"><img src="/web/img/button/btn_next.gif" alt="다음" /></a>
	<a href="#"><img src="/web/img/button/btn_last.gif" alt="마지막페이지" /></a>*/


	}
