<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">  
  $(function(){	  
	/*  $("button").click(function(){
		 //alert($(this).text());
		 if($(this).attr("id")=='b1'){
			 $("p").show(1000);
		 }
		 if($(this).attr("id")=='b2'){
			 $("p").hide(1000);
		 }
		 if($(this).attr("id")=='b3'){
			 $("p").toggle(1000);
		 }
		 if($(this).attr("class",'btn')){
			 $("p").fadeOut(1000);
		 }
		 /* if(this.id=='b4'){
			 $("p").fadeOut(1000);
		 }
		 if(this.id=='b5'){
			 $("p").fadeIn(1000);
		 } 
	 }); */
	 $("button.slideUp").click(function(){
		 $("p").slideUp(1000);
	$("button.slidedown").click(function(){
		$("p").slideDown(1000);
	});
	 });
  });  
</script>
</head>
<body>
   <button id="b1">Show</button>
   <button id="b2">Hide</button>
   <button id="b3">Toggle</button>
   <button class="btn">FadeOut</button>
   <button class="btn">FadeIn</button>
   <button class="slideUp">SlideUp</button>
   <button class="slidedown">SlideDown</button>   
   
   <p>one are the days when flying across the Atlantic would routinely cost a small fortune.
In fact, options for taking affordable transatlantic flights from cities across Western Europe have grown hugely with the arrival of new low-cost airlines and the introduction of stripped down fares from the traditional airlines.
Thanks to the amount of competition in the airline industry over this new battle ground, there are travel opportunities for those living all over Europe, and on the other side of the Atlantic, to take advantage of great fares.
But with the collapse on March 28 of Icelandic low-cost carrier Wow Air, leaving thousands of passengers stranded, it's clear that there will be winners and losers in this fast-moving landscape.
Where can you fly?
   </p>
</body>
</html>




