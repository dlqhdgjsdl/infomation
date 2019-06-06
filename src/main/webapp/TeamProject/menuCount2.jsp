<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
window.onload = function () {
	//Better to construct options first and then pass it as a parameter
	var options = {
		title: {
			text: "월별 매출액"              
		},
		data: [              
		{
			// Change type to "doughnut", "line", "splineArea", etc.
			type: "column",
			dataPoints: [
				{ label: "1월",  y: 80  },
				{ label: "2월",  y: 90  },
				{ label: "3월",  y: 100  },
				{ label: "4월",  y: 70  },
				{ label: "5월",  y: 60  },
				{ label: "6월",  y: 80  },
				{ label: "7월",  y: 55  },
				{ label: "8월",  y: 69  },
				{ label: "9월",  y: 78  },
				{ label: "10월",  y: 12  },
				{ label: "11월",  y: 81  },
				{ label: "12월",  y: 73  }
			]
		}
		]
	};

	$("#chartContainer").CanvasJSChart(options);
	}
</script>
</head>
<body>
<jsp:include page="header.jsp"/>
<div id="chartContainer" style="height: 600px; width: 80%; padding-top: 5%; margin: auto;"></div>
<jsp:include page="footer.jsp"/>
</body>
<script type="text/javascript" src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
</html>