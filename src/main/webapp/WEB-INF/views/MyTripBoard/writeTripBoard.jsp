<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
</head>
<body>
<fieldset>
	<legend>일정자랑 작성</legend>
	<div class = "trip_notice">
		<ul>
			<li>
			 	<label for = "title">제목</label>
			 	<input type = "text" name = "title">
			 </li>
			 <li>
			 	<label for = "date">날짜</label>
			 	<input type = "date"> ~ <input type = "date">
			 </li>
			 <li>
			 	<label for = "date">일정</label>
			 	박 일
			 </li>
			 <div class = "myinfo">
				<a href = "#">나의 정보 불러오기</a>
			</div>
			<li>
				<label for = "schedule">스케줄</label>
				
			</li>
			<li>
				<label for = "latter">후기</label>
				<textarea name = "latter" rows = "6" cols = "200"></textarea>
			</li>
		</ul>
	</div>
</fieldset>

</body>
</html>