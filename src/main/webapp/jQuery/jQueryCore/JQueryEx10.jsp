<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Tabs - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  	function ajaxProcess(url,obj){
  		$ajax({
  			url:'1.jpg',
  			dataType:'image',
  			success:function(v){
  				$("div#"+obj+"p")
  			}
  			
  		});
  	}
  $( function() {
    $( "#tabs" ).tabs();
    $("a").click(function(){
    	if($(this).attr("href")=="#tabs-1"){
    		alert($(this).attr("href").substring(1)
    	}
    });
  } );
  </script>
</head>
<body>
 
<div id="tabs">
  <ul>
    <li><a href="#tabs-1">»§</a></li>
    <li><a href="#tabs-2">¹ä</a></li>
    <li><a href="#tabs-3">¼±ÅÃÀå¾Ö</a></li>
  </ul>
  <div id="tabs-1">
    <p>»§¸ÔÀ»±î¿ä?</p>
  </div>
  <div id="tabs-2">
    <p>¹ä¸ÔÀ»±î¿ä?</p>
  </div>
  <div id="tabs-3">
    <p>¹«¾ùÀ» ¸ÔÀ»±î¿ä?</p>
    
  </div>
</div>
 
 
</body>
</html>