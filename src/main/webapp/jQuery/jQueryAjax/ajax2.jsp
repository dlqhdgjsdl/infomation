<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
  function ajaxProcess(url,dataType){
	  
	  $.ajax({
	    	url:url,
	    	cache:false,
	    	type:'GET',
	    	dataType:dataType,
	    	
	    	success:function(v){
	    		/* $("#tt1").html(v); */
	    		
	    		$(v).each(function(index,dom){
	    			$("tbody#tb").append("<tr><td>"+dom.empno+"</td><td>"+dom.ename+"</td><td>"+dom.sal+"</td><td>"+dom.comm+"</td><td>"+dom.hiredate+"</td><td>"+dom.job+"</td>"+"</tr>");   	    		
	    			});
	    		},error:function(){
	    		alert('error');
	    	}
	     });
  }
  $(function(){	  
	  $("div#tableID").hide();   
	    $("button#emp").click(function(){
	    	$("div#tableID").show(1000);
	    	ajaxProcess('/web/ajaxEmp.do','json');
	    });
  });  
</script>
</head>
<body>
   <button id="emp">EMP</button>
   <button>STUDENT</button>
   <div id="tt1">
   </div>
   <div class="container" id="tableID">
  <h2>Contextual Classes</h2>
  <p>Contextual classes can be used to color table rows or table cells. The classes that can be used are: .active, .success, .info, .warning, and .danger.</p>
  <table class="table" >
    <thead>
      <tr>
        <th>EMPNO</th>
        <th>ENAME</th>
        <th>SAL</th>
        <th>COMM</th>
        <th>HIREDATE</th>
        <th>JOB</th>
      </tr>
    </thead>
    <tbody ID="tb">
      
    </tbody>
  </table>
</div>
</body>
</html>



