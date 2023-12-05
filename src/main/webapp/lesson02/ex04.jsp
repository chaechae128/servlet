<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문 사용</title>
</head>
<body>
	<%
		// Map을 테이블로 표현하기
		// {"키" : 값}  -> javascript
		// {"키" = 값}  -> java
		// {"korean" = 85, "english"=72, "math"=90, "science"=100}
		Map<String, Integer> scoreMap = new HashMap<>();
		scoreMap.put("korean", 85);
		scoreMap.put("english", 72);
		scoreMap.put("math", 90);
		scoreMap.put("science", 100);							
	%>
	
	<table border="1">
		<%
			Iterator<String> iter =	scoreMap.keySet().iterator();
			while(iter.hasNext()) {
				String key = iter.next();
			
		%>
		
		<tr>
			<th>
				<%
					if (key.equals("science")) {
						out.println("과학");
					} else if (key.equals("korean")) {
						out.println("국어");
					} else if (key.equals("english")) {
						out.println("영어");
					} else if (key.equals("math")) {
						out.println("수학");
					}
				
				%>
			</th> <!-- set은 순서가 지 멋대로임 -->
			<td><%=scoreMap.get(key) %></td>
		</tr>
		
		<%
			}
		%>
	
	</table>
</body>
</html>