package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class Lesson04Quiz01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
	
		//DB연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		//insert
		String insertQuery = "insert into `real_estate`"
				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`)"
				+"values"
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, null)";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//select & 출력
		PrintWriter out = response.getWriter();
		String query = "select `address`, `area`, `type` from `real_estate` order by `id` desc limit 10;";
		try {
			ResultSet res = ms.select(query);
			while (res.next()) {
				out.println("매물주소: " + res.getString("address")
				+ ", 면적: " + res.getInt("area")
				+ ", 타입: " + res.getString("type"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// DB 연결 해제
			ms.disconnect();
	}
}
