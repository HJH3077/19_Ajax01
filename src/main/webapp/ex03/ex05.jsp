<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		var request = new XMLHttpRequest();
		request.open("GET", "data_05.js", false);
		
		request.onreadystatechange = function() {
			if(request.readyState == 4){
				if(request.status == 200){
						// 가져온 데이터를 자바스크립트 형식으로 읽어들이자 (eval())
						var msg = ""						
						var data = eval("("+request.responseText+")");
						// data_05가 배열안에 배열 형식으로 저장해서 2중 for문 사용
						for (var i = 0; i < data.length; i++) {
							for ( var k in data[i]) {
								msg += data[i][k] + "&nbsp; &nbsp;"
							}
							msg += "<br>";
						}
						// 출력
						document.body.innerHTML = msg;
					}
				}
		}
		
		// 이런걸 파싱이라고함(우리는 ajax 사용)
		request.send();
	</script>
</body>
</html>