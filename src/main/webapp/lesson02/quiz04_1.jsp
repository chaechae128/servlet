<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>
	<%
	int length = Integer.parseInt(request.getParameter("length"));
	String[] measureArr = request.getParameterValues("measure");
	String result = "";	
	double change;

	for (int i = 0; i < measureArr.length; i++) {
		if (measureArr[i].equals("in")) {
			change = length * 0.393701;
			result += change + " in,";
		} else if (measureArr[i].equals("yd")) {
			change = length * 0.010936;
			result += change + " yd,";
		} else if (measureArr[i].equals("ft")) {
			change = length * 0.032808;
			result += change + " ft,";
		} else if (measureArr[i].equals("m")) {
			change = length * 0.01;
			result += change + " m,";
		}
		
	}
	%>
	
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%= length %>cm</h3>
		<hr>
		
		<%
			String[] resultArr = result.split(",");
			for (int i = 0; i < resultArr.length; i++) {
				out.println("<h3>"+resultArr[i] +"</h3>");
			}
			
		%>
	</div>
</body>
</html>