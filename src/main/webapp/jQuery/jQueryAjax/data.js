function clockFunction(){
	var spanid=document.getElementById("sp");
	var now=new Date();
	spanid.innerHTML=now.getFullYear()+"/"+ (now.getMonth()+1)+"/"+now.getDate()+"/"+now.getHours()+"/"+now.getMinutes()+"/"+now.getSeconds()+"/"+now.getMilliseconds(); 
	setTimeout("clockFunction()",100);
	
}