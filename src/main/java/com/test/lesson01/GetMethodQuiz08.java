package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		//힣
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		String restaurant = request.getParameter("restaurant");
		
		out.print("<html><head><title>검색하기</title></head><body>");
		Iterator<String> iter = list.iterator();
		while(iter.hasNext()) {
			String line = iter.next();
			//1)
			if(line.contains(restaurant)) {
				String bold = line.replace(restaurant, "<b>"+restaurant+"</b>");
				out.print(bold);
				out.print("<br>");
			}
			
			//2) keyword기준으로 split하여 나눔 
//			if(line.contains(restaurant)) {
//				String[] words = line.split(restaurant); // 0:앞문장, 1: 뒷문장
//				out.print(words[0] + "<b>" + restaurant + "</b>" + words[1] + "<br>");
//			}
		}
//		for (int i = 0; i<list.size(); i++) {
//			if(list.get(i).contains(restaurant)) {
//				String bold = list.get(i).replace("맛집", "<b>맛집</b>");
//				out.print(bold);
//				out.print("<br>");
//			}
//		}
		out.print("</body></html>");
		
	}
}
