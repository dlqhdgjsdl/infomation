<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
   
   
<script type="text/javascript">
  function ajaxProcess(json){
	 alert(json);
	  google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable(
         /*  [['Task', 'Hours per Day'],
          ['Work',     8000],
          ['Eat',      5000],
          ['Commute', 3000],
          ['Watch TV', 2000],
          ['Sleep',    1000]] */
         eval(json)
         ) 
          
          /*  console.log(eval(json))
          var data = google.visualization.arrayToDataTable(
         		eval(json)
        ) */

        var options = {
          title: 'My Daily Activities'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
  }
  
  
  
  
  $(function(){
	  var temp="";
	   $("input[type='button']").click(function(){
		   $.ajax({
			   url:'jsonValue1.jsp',
			   dataType:'json',
			   success:function(v){
				   console.log(v);
				   
				   ////////////////////////////////////////// 찬일 형 소스
				    temp="[[\"Task\", \"Hours per Day\"]";
				   $.each(v,function(index,dom){
					  $.each(dom,function(jj,j){
						  
					   temp+=",[\""+jj+"\","+j+"]";
					  }); 
				   });
				   var tempp=temp+"]";
				   alert(tempp);
				   ajaxProcess(tempp); 
				   ///////////////////////////////////////////////
				   
				   //강사님 소스
				   /* temp+="[";
            	   $.each(v,function(index,dom){
            		    	temp+="[";
            		    	 var k=0;
            		     $.each(dom,function(j,jdom){
            		    	 k=k+1;   
            		    	if(typeof(jdom)=='string'){
            		    		temp+="\""+j+"\""+","+"\""+jdom+"\"";
            		    	}else{
            		    	temp+="\""+j+"\""+","+jdom;
            		    	}
            		    	
            		    	 if(k!=Object.keys(dom).length){
            		    		temp+="],[";
            		    	}            		    	
            		    	
            		     });//each            		 
            		     temp+="]";
            		       if(index!=v.length-1){
            		    	 temp+=",";
            		     } 
            	   });//each
            	   
            	   temp+="]"
            	  console.log(eval(temp));
            	   ajaxProcess(temp); */
				   
				   },error:function(e){
					   alert('error'+e);
				   }
		   });
	   });
  });  
</script>
</head>
<body>
   <input type="button" value="Click1" >
    <div id="piechart" style="width: 900px; height: 500px;"></div>
</body>
</html>