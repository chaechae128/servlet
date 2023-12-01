package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz10")
public class PostMethodQuiz10 extends HttpServlet{
	
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		String realId = userMap.get("id");
		String realPassword = userMap.get("password");
		String name = userMap.get("name");
		
		
		out.print("<html><head><title>로그인</title></head><body>");
		if (id.equals(realId) == false) {
			out.print("id가 일치하지 않습니다.");
		} else if (password.equals(realPassword) == false) {
			out.print("password가 일치하지 않습니다.");
		} else {
			out.print(name + "님 환영합니다!");
		}
		out.print("</body><html>");
		
		
	}
}
