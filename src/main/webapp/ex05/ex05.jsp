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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$("#btn").click(function() {
		$("#out").empty(); // 기존 내용 초기화
		var table = "<table>";
		table += "<thead>";
		table += "<tr><td>종류</td><td>가격</td></tr>";
		table += "</thead>";
		table += "<tbody>";
		// jQuery에서 json파일 읽기
		$.getJSON("data_05.js", function(data) {
			/* $.each(data, function(k, v) { // key, value 값을 줘서 key를 부르면 value가 나오게 설계, 아니면 지금 처럼 key나 value 둘 중 아무거나 가져오게
				table += "<tr>"
				table += "<td>" + v["name"] + "</td>"; // key, value로 해도 되고 이렇게 1개에 넣어도됨
				table += "<td>" + v["price"] + "</td>";
				table += "</tr>"
			}); */
			$.each(data, function() { // key, value 안써도 무방함
				table += "<tr>"
				table += "<td>" + this["name"] + "</td>"; 
				table += "<td>" + this["price"] + "</td>";
				table += "</tr>"
			});
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
	<button id="btn">JSON 정보 가져오기</button>
	<hr>
	<div id="out"></div>
	<h3>Hello World</h3>
</body>
</html>