package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet{
	
	@Override //request, response 순서 지키기
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지 - response header 
		// 두 개 순서는 상관 x 그냥 상단에 세트로 써야됨
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		
		PrintWriter out = response.getWriter();
		out.println("안녕하세요");
		
		Date now = new Date(); //이 시간으로 현재시간 설정
		out.println(now); // Mon Nov 27 17:04:21 KST 2023
		
		// formatter
		// 2023-11-27 오후 17:05:43
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a HH:mm:ss");
		out.println(sdf.format(now));
		
	}
}
