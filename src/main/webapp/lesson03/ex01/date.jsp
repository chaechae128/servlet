<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%-- 이 페이지 코드가 result페이지로 걍 복사되는것과 마찬가지임 -> html 겹쳐서 html은 지워여함 --%>
<p>
	현재시간 : <%= Calendar.getInstance().getTime() %>
</p>