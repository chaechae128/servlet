package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/lesson01/ex02") //한 프로젝트 안에서 중복X !!
public class UrlMappingEx02 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		
		PrintWriter out = response.getWriter();
		//서블릿(servlet): 자바 + html -> 앞으로 안 쓸거임
		// 1~10 합계: 1+2+3+4+....10
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
		
		//합계 <b>결과값</b>
		out.println("<html><head><title></title></head><body>");
		out.println("합계:<b>" + sum + "</b>");
		out.println("</body></html>");
	}
}
