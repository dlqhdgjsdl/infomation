<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<title>배달의민족 사장님 사이트</title>

<!-- Custom styles for this template-->
<link href="/web/TeamProject/css/sb-admin-2.min.css" rel="stylesheet">
<style type="text/css">
@font-face {
	font-family: "BM";
	src: url("BMDOHYEON_ttf.ttf") format("truetype");
}

body {
	background-image: url();
	background-size:;
	font-family: BM;
	color: gray;
	font-size:;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function(){
	$("select#storestartAMPM").change(function(){
		//startampm="";
	//	startampm+=$(this).val();
//		$("input#storestart").val(startampm+"/"+storestart);
		$("input#storestart").val($(this).val()+"/"+$("select#storestart").val());
	});
	$("select#storestart").change(function(){
		//storestart="";
		//storestart+=$(this).val();
		$("input#storestart").val($("select#storestartAMPM").val()+"/"+$(this).val());
	});
	$("select#storeendAMPM").change(function(){
		//endampm="";
		//endampm+=$(this).val();
		$("input#storeend").val($(this).val()+"/"+$("select#storeend").val());
		
	});
	$("select#storeend").change(function(){
	//	storeend="";
//		storeend+=$(this).val();
		$("input#storeend").val($("select#storeendAMPM").val()+"/"+$(this).val());
	});
	
	if('${owner.ownerno}'!=''||'${owner.ownerno}'!=null){
    $("select#storestartAMPM").val("${store.storestart}".split("/")[0]).attr("selected",true);
    $("select#storestart").val("${store.storestart}".split("/")[1]).attr("selected",true);
    $("select#storeendAMPM").val("${store.storeend}".split("/")[0]).attr("selected",true);
    $("select#storeend").val("${store.storeend}".split("/")[1]).attr("selected",true);
    }
	//$("select#storestartAMPM").val(${store.storestart}.split('/')[0]).attr("selected","selected");
	
	    /*주소*/
	$("button#addr").click(function(){
	    new daum.Postcode({
	        oncomplete: function(data) {
	        	$("#postN").val(data.postcode);
	        	$("input#addr").val(data.jibunAddress);
	        }
	    }).open();
	});
	$("input#addr2").focusout(function(){
        //alert($("#postN").val());
        if($("input#addr2").val()==null||$("input#addr2").val()==''){
        alert('CHECK ADDRESS');
        return false;
        }
        $("input#storeaddr").val($("#postN").val()+"#"+$("input#addr").val()+"#"+$(this).val());
		//$("input#owneraddr").value($("#postN").text());
	});/* +"#"+$("input#addr").val()+"#"+$(this).val() */
	
	$("#modify").click(function(){
		$("#frm").submit();
	});
	
	/*처음들어올때 주소값 넣어주기*/
	 if("${store.storeaddr}"!=null){
		storeaddr="${store.storeaddr}";
		 $("#postN").val(storeaddr.split("#")[0]);
		 $("input#addr").val(storeaddr.split("#")[1]);
		 $("input#addr2").val(storeaddr.split("#")[2]);
	} 
});
	
	
	
</script>
</head>

<body>


	<div class="container">

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
				
					<div class="col-lg-5 d-none d-lg-block " style="padding-top:8%;">
						<img alt="" src="/web/TeamProject/img/bm_login_image.jpg">
						<img alt="" src="/web/TeamProject/img/bm_login_image1.jpg">
					</div>
					<div class="col-lg-7">
						<div class="p-5">
							<div class="text-center">
								<a href="/web/TeamProject/Main.jsp"><img src="/web/TeamProject/img/bm.png"></a>

								<p class="h4 text-gray-900 mb-4">
								<p>
							</div>
							<p style="color: black;">매장정보를 입력하세요
							<p>
							<form action="/web/storeinfo.do" class="user" id="frm" method="post" enctype="multipart/form-data">
								<div class="form-row">
								 <input type="hidden" name="ownerno" placeholder="사장님번호" value="${owner.ownerno}">
									<input type="text" class="form-control "
										name="storename" id="storename" placeholder="매장이름*" value="${store.storename}">
								</div>
								<br>
								<div class="form-row">
								<select id="storestartAMPM" class=" form-control">
								 <option value="empty" selected>AM/PM선택*</option>
								 <option value="AM">AM</option>
								 <option value="PM">PM</option>
								</select>
								<select id="storestart" class=" form-control">
								 <option value="empty" selected>매장운영시작*</option>
								 <option value="01:00">01:00</option>
								 <option value="02:00">02:00</option>
								 <option value="03:00">03:00</option>
								 <option value="04:00">04:00</option>
								 <option value="05:00">05:00</option>
								 <option value="06:00">06:00</option>
								 <option value="07:00">07:00</option>
								 <option value="08:00">08:00</option>
								 <option value="09:00">09:00</option>
								 <option value="10:00">10:00</option>
								 <option value="11:00">11:00</option>
								 <option value="12:00">12:00</option>
								</select>
								<input type="hidden" id="storestart" name="storestart" value="${store.storestart}">
								</div>
								<br>

								<div class="form-row">
								<select id="storeendAMPM" class=" form-control">
								 <option value="empty" selected>AM/PM선택*</option>
								 <option value="AM" >AM</option>
								 <option value="PM" >PM</option>
								</select>
								<select id="storeend" class=" form-control">
								 <option value="empty" selected>매장운영마감*</option>
								 <option value="01:00">01:00</option>
								 <option value="02:00">02:00</option>
								 <option value="03:00">03:00</option>
								 <option value="04:00">04:00</option>
								 <option value="05:00">05:00</option>
								 <option value="06:00">06:00</option>
								 <option value="07:00">07:00</option>
								 <option value="08:00">08:00</option>
								 <option value="09:00">09:00</option>
								 <option value="10:00">10:00</option>
								 <option value="11:00">11:00</option>
								 <option value="12:00">12:00</option>
								</select>
								<input type="hidden" id="storeend" name="storeend" value="${store.storeend}">
								</div>
								<br>
								<div class="form-row">
									<input type="text" class="form-control "
										name="storephone" placeholder="매장전화번호*" value="${store.storephone}">
								</div>
								<br>

									<div class="form-row" >
									<a style=""><img src="/web/upload/${store.storeimg}" style="width: 100px;height:100px"><input type="file" class="form-control" name="file"></a>
									
								</div>
								<br>
							<div class="form-row">
								<input type="text" class="form-control form-control-user"
									id="postN" placeholder="우편번호" style="width: 200px;">
								<button class="btn" type="button" id="addr">주소찾기</button>
							</div>
							<br>
							<div class="form-row">
								<input type="text" class="form-control form-control-user"
									id="addr" placeholder="주소" readonly="readonly">
							</div>
							<br>

							<div class="form-row">
								<input type="text" class="form-control form-control-user"
									id="addr2" placeholder="상세주소" >
							</div>
							<div class="form-row">
								<input type="hidden" class="form-control form-con	trol-user" value="${store.storeaddr}"
									name="storeaddr" id="storeaddr" placeholder="진짜값">
							</div>
							<br>
							<a id="modify" class="btn btn-primary btn-user btn-block" style="color: white">수정완료 </a>
							</form>
						</div>
				</div>
			</div>
			</div>
		</div>
	</div>
	


</body>

</html>
