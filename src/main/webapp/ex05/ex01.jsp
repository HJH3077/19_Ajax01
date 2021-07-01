<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css"></style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		// get 요청을 사용하여 서버에서 데이터를 로드한다.
		// jQuery.get(url[,data][,success][,dataType])
		$("#btn").click(function() {
			$("#out").empty(); // 누를 때 마다 이전 것에 덮어 씌워서 생기는 것을 방지
			$.get("data_01.html", function(data) {
				// data는 가지고 온 정보를 의미함
				$("#out").append(data);
			});
		});
	});
</script>
<script type="text/javascript"></script>
</head>
<body>
	<button id="btn">html 파일 가져오기</button>
	<hr>
	<div id="out"></div>
	<h3>Hello World</h3>
</body>
</html>