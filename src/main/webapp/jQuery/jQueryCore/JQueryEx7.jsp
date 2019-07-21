<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Accordion - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  function ajaxProcess(url,obj){
	
	  $.ajax({
				url:url,
				dataType:'text',
				success:function(v){
					
				$(obj).text(v);
				
				}
			});
	  return temp;
  }
  $( function() {
    $( "#accordion" ).accordion();
    str="";
    $("h3").click(function(){
    	/* alert($(this).text()); */
    /* 	alert($(this).first().first().text('tt'); */
   		if($(this).text()=='Section1'){
   			ajaxProcess('bong.jsp',$(this).next().first());
   			/* $(this).next().first().text(ajaxProcess('bong.jsp')); */
   		}
    if($(this).text()=='Section2'){
    	ajaxProcess('bong2.jsp',$(this).next().first());
    }
    if($(this).text()=='Section3'){
    	ajaxProcess('bong3.jsp',$(this).next().first());
    }
   		
    });
  } );
  </script>
</head>
<body>
 
<div id="accordion" style="width: 30%">
  <h3>Section1</h3>
  <div>
    <p>
    TEST1
    </p>
  </div>
  <h3>Section2</h3>
  <div>
    <p>
	TEST2
    </p>
  </div>
  <h3>Section3</h3>
  <div>
    <p>
	TEST3
    </p>
    <ul>
      <li>List item one</li>
      <li>List item two</li>
      <li>List item three</li>
    </ul>
  </div>
  <h3>Section 4</h3>
  <div>
    <p>

    </p>
    <p>

    </p>
  </div>
</div>
 
 
</body>
</html>