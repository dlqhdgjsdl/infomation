<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
  <script type="text/javascript">
     $(function(){
    	 $("button").click(function(){
    		 /* if($("input#id").val()=='blue'){
    		    // $("form#frmID").submit();
    		    $("form").attr("action","/web/memberInsert.do");
    		 }else if($("input#id").val()=='red'){
    			 //$("form#frmSearch").submit();
    			 $("form").attr("action","/web/search.do");
    		 }
    		 $("form").submit(); */
    		 //alert($("input#id").val().length);    		
    		 var state=false;
    		 $("input[type='text']").each(function(index,dom){
    			 if($(this).val().length==0){
    				 state=true;
    			 }
    		 });//input[type=text]
    		 if(state||$("input[type='password']").val().length==0){
    			 alert('Data Check');
    			 return false;
    		 }
    		 $("form").submit();
    		 
    	 });
     });
  </script>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Member Process</h2>
  <form action="/web/memberInsert.do" id="frmID">
    <div class="form-group">
      <label for="email">Id:</label>
      <input type="text" class="form-control" id="id" placeholder="Enter id" name="id">
    </div>
    <div class="form-group">
      <label for="email">Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
    </div>
    <div class="form-group">
      <label for="addr">Addr:</label>
      <input type="text" class="form-control" id="addr" placeholder="Enter email" name="addr">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="button" class="btn btn-default">Submit</button>
  </form>
  <!-- <form action="/web/search.do" id="frmSearch">
  
  </form> -->
</div>

</body>
</html>
    