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
		request.open("GET", "data_01.html", false);
		
		// 데이터처리 완료와 데이터 정보 받기가 제대로 수행되었는지 검사
		request.onreadystatechange = function() {
			// readyState : 객체의 현재 상태 표시
			// 0 => 객체 생성, 1 => open 실행, 2 => 모든 요청에 대한 응답이 도착
			// 3 => 요청에 대한 자료 처리 중, 4 => 데이터처리가 완료되어 응답할 준비가 완료
			if(request.readyState == 4){
				// status : 서버의 문서 상태를 나타냄
				// 2XX => 성공, 4XX => 클라이언트에 문제 발생, 5XX => 서버에서 오류 발생
				if(request.status == 200){
					// 화면 결과 출력(자바스크립트나 jQuery 사용)
					var data = request.responseText;
					document.body.innerHTML = data;
				}
			}
		
		}
		
		request.send();
		
		// document.body.innerHTML = request.responseText; 	// 텍스트만 표시
	</script>
</body>
</html>