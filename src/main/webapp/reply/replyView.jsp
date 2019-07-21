<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="/web/reply/rss.css"/>
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script>
	function actionData(){
		var form=$("form");
		form.submit(function(){
				
			$.ajax({
				type:'POST',
				url:"${pageContext.request.contextPath}/replyInsert.do",
			});
		});
	}
	$(function(){
		$("textarea").focus(function(){
			$(this).val('');
		})
		$("textarea").keyup(function(){
			if($(this).val().length>300){
			$(this).val('');
			}
			$(".txt_byte").html($(this).val().length);
		});
	});
</script>
</head>
<body>
<div class="cmt_comm">
	<form method="post" id="frm">
		<fieldset class="fld_cmt">
			<legend class="screen_out">��� �ۼ�</legend>
			<textarea class="tf_cmt" cols="90" rows="5" title="���� ��ũ�� �޾��ּ���">���� ��ũ�� �޾��ּ���! (300��)</textarea>
			<input type="submit"  onclick="actionData()">���</input>
			<p class="info_append">
				<span class="screen_out">�Էµ� ����Ʈ �� : </span>
				<span class="txt_byte">55</span> / 300��
				<span class="txt_bar">|</span>
				<a href="#none">��� ���Ģ</a>
			</p>
		</fieldset>
	</form>
	<strong class="screen_out">��ü ���</strong>
	<div class="list_cmt">
		<div class="cmt_head"></div>
		<div class="cmt_body">
			<span class="info_append">
				<span class="txt_name">�۾���</span>
				<span class="txt_bar">|</span>
				<span class="txt_time">2013.01.01 14:22</span>
			</span>
			<p class="txt_desc" id="contents">
				��� ������ ������ ��...��۴�� ������ ������ ��...��� ������ ������ ��...��� ������ ������ ��...
			</p>
		</div>
		<div class="cmt_foot">
			<a href="#none">���</a><span class="txt_bar">|</span><a href="#none">����</a><span class="txt_bar">|</span><a href="#none">����</a><span class="txt_bar">|</span><a href="#none">�Ű�</a>
		</div>
	</div>
	
</div>

</body>
</html>