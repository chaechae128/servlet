<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-2">
	<h3>
		<a href="/lesson03/quiz02/layout1.jsp" class="text-success">Melong</a>
	</h3>
</div>
<div class="col-10">
	<form method="post" action="/lesson03/quiz02/layout2.jsp">
		<div class="input-group">
			<input type="text" class="form-control col-6" name="search">
			<div class="input-group-append">
				<input type="submit" class="btn btn-info" value="검색">
			</div>
		</div>
	</form>
</div>