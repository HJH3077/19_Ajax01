<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	width: 600px;
}

table, th, td {
	border: 1px solid red;
	text-align: center;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btn").click(function() {
			$("#out").empty(); // 기존 내용 초기화
			var table = "<table>";
			table += "<thead>";
			table += "<tr><td>번호</td><td>이름</td><td>나이</td><td>주소</td></tr>";
			table += "</thead>";
			table += "<tbody>";
			// jQuery에서 텍스트 읽기 : get() 사용
			$.get("data_06.txt", function(data) {
				var people = data.split("/"); // /로 정보를 쪼갬 (그래서 text에 사람마다 /로 구별했음)
				for ( var k in people) {
					table += "<tr>";
					var people_info = people[k].split(","); // ,기준으로 한 사람의 정보를 쪼갬
					for ( var y in people_info) {
						table += "<td>" + people_info[y] + "</td>";
					}
					table += "</tr>";

				}
				table += "</tbody>";
				table += "</table>";
				$("#out").append(table);
			});
		});
	});
</script>
<script type="text/javascript"></script>
</head>
<body>
	<button id="btn">text 파일 정보 가져오기</button>
	<hr>
	<div id="out"></div>
	<h3>Hello World</h3>
</body>
</html>