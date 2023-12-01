<%@page import="java.util.Iterator"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<%!
	//1) 1부터 n까지의 합계를 구하는 함수
		public int getSum(int n) {
			int sum = 0;
			for(int i = 1; i <= n; i++) {
				sum += i;
			}
			return sum;
	}
	%>			
		
	
	<% 
	//2) 점수들의 평균 구하기	
	int[] scores = {80, 90, 100, 95, 80};
	int scroeSum = 0;
	for(int i = 0; i < scores.length; i++) {
		scroeSum += scores[i];
	}
	double avg = (double)scroeSum/scores.length;
	
		
	//3) 채점 결과
	//jsp에서 import ctrl+space
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score = 0;
	Iterator<String> iter = scoreList.iterator();
	while(iter.hasNext()) {
		String answer = iter.next();
		if (answer.equals("O")) {
			score += 10;
		} 
	} 
	
	//4) 나이구하기
	String birthDay = "20010820";
	int age = Integer.parseInt(birthDay.substring(0, 4));
	age = 2023-age-1;
	%>	

	<h1>1부터 50까지의 합은 <%= getSum(50) %>입니다.</h1>
	<h1>평균 점수는 <%= avg %>입니다.</h1>
	<h1>채점 결과는 <%= score %>입니다.</h1>
	<h1><%= birthDay %>의 나이는 <%= age %>세 입니다.</h1>
	
</body>
</html>