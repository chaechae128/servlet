package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//response.setContentType("text/plain");
		response.setContentType("text/json");
		response.setCharacterEncoding("utf-8");
		
		// Request Parameter 받아오기
		String userid = request.getParameter("user_id"); //얘의 응답 값은 user_id인 kelly
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));//age가 넘어가지 않는 순간에는 age가 null이기 떄문에
		// null을 int로 변환할 수 없기에 에러 발생
		PrintWriter out = response.getWriter();
//		out.println("결과");
//		out.println("user_id: " + userid);
//		out.println("name: " + name );
//		out.println("age: " + age );
		
		// {"user_id":"kelly", "name":"김채연", "age":22}  <- 하나의 String
		out.println("{\"user_id\":\"" 
				+ userid + "\", \"name\":\"" 
				+ name + "\", \"age\":" + age + "}");
	}
}
