<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
window.onload = function () {

	var options = {
		animationEnabled: true,
		title: {
			text: "�޴��� �Ǹŷ�"
		},
		data: [{
			type: "doughnut",
			innerRadius: "40%",
			showInLegend: true,
			legendText: "{label}",
			indexLabel: "{label}: #percent%",
			dataPoints: [
				{ label: "���ġŲ", y: 6492917 },
				{ label: "�Ķ��̵�ġŲ", y: 7380554 },
				{ label: "����ġŲ", y: 1610846 },
				{ label: "�� ���� ġŲ", y: 950875 },
				{ label: "���� ġŲ", y: 900000 }
			]
		}]
	};
	$("#chartContainer").CanvasJSChart(options);

	}
</script>
</head>
<body>
<jsp:include page="header.jsp"/>
<div id="chartContainer" style="height: 500px; width: 100%; padding-top: 5%"></div>
<jsp:include page="footer.jsp"/>
</body>
<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
</html>