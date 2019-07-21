<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
  $(function(){
	$('question').css('cursor','pointer');
	$('.answer').hide();
	$('.question').each(function(index){
		$(this).click(function(){
			$('.answer').eq(index).show(1000);
		});
		$(this).dblclick(function(){
			$('.answer').eq(index).show(1000);
		});
	});
});
</script>
<body>

<div class="container">
  <h2>hohohoho anything ask me</h2>
  <p>The .active class applies the hover color to a particular row or cell:</p>                                        
  <table class="table">
    <thead>
      <tr>
        <th>NO</th>
        <th>STATE</th>
      </tr>
    </thead>
    <tbody>
      <tr class="question">
        <td>1</td>
        <td>���ָ�?</td>
      </tr>
      <tr class="answer">
        <td>1-1</td>
        <td>���ѷ���</td>
      </tr>
      <tr class="question">
        <td>2</td>
        <td>������ vs �ĵ�Ƽ</td>
      </tr>
      <tr class="answer">
        <td>2-2</td>
        <td>�Ѵ� ���ƿ�</td>
      </tr>
      <tr class="question">
        <td>3</td>
        <td>�����ϴ� ������?</td>
      </tr>
      <tr class="answer">
        <td>3-2</td>
        <td>�ʷϻ�,��Ȳ��,�����,������,ȸ��</td>
      </tr>
       </tbody>
  </table>
</div>

</body>
</html>
    