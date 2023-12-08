package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
   private static MysqlService mysqlService = null; // new를 안해도 된다.
   
   // 도메인 뒤에 접속할 데이터베이스명까지 적는다.
   private static final String url = "jdbc:mysql://localhost:3307/test_230914"; 
   private static final String id = "root";
   private static final String password = "root";
   
   private Connection conn = null;
   private Statement statement;
   private ResultSet res;
   
   // Singleton 패턴: MysqlService라는 객체가 단 하나만 생성되도록 하는 디자인 패턴
   //              DB 연결을 여러 객체에서 하지 않도록 (방지하기 위해서)
   public static MysqlService getInstance() {
      if (mysqlService == null) { // 없으면 만들어주고
         mysqlService = new MysqlService();
      } 
      return mysqlService; // 있으면 있는걸 돌려준다.
   }
   
   // DB 접속
   public void connect() {
      try { // 예외를 내가 책임진다는 의미 연결을 잘못시킨 나의 잘못
         // 1. 드라이버 메모리에 로딩
         DriverManager.registerDriver(new com.mysql.jdbc.Driver());
         
         // 2. DB Connection
         conn = DriverManager.getConnection(url, id, password);
         
         // 3. 쿼리 실행 준비 => statement
         statement = conn.createStatement();
         
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
      
   }
   
   // DB 연결 해제
   public void disconnect() {
      try {
         statement.close();
         conn.close();
      } catch (SQLException e) {
         e.printStackTrace();
      }
   }
   
   // CUD
   // query를 만든 사람의 책임이기때문에 throw 해준다.
   public void update(String query) throws SQLException {
      statement.executeUpdate(query);
   }
   
   // R
   public ResultSet select(String query) throws SQLException {
      res = statement.executeQuery(query);
      return res;
   }
}
