<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- HTMl 주석 -->
	<%-- JSP  주석 --%>
<%
	//이 영역 안에 java코드 작성 <- 그래서  //이 주석이 먹힘 
	//자바 문법 시작
	// scriptlet <-spring에서는 절대절ㄷ래 쓰면 안 되는 문법
	int sum = 0;
	for (int i = 1; i<=10 ; i++) {
		sum += i;
	}

%>

	<b>합계:</b>
	<input type="text" value="<%=sum%>"> 
	<br>
<%! 
	// 선언문 -  클래스 같은 느낌 
	
	//필드
	private int num = 100;

	//메소드
	public String getHelloWorld(){
		return "Hello World";
	}
%>


	<%= getHelloWorld() %><br> <!-- 세미콜론 안 써도 됨 -->
	<%= num + 20 %>
	
</body>
</html>