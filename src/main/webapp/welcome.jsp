<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.Date" %> <!-- 자바 date, SimpleDdateFormat 임포트 부분 -->
   <%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<title>Web Market</title>
</head>
<body>
	<!-- bootstrap import 후 사용하는 class들. navbar는 상단의 메뉴바 -->
	<nav class="navbar navbar-expand navbar-dark bg-dark">
	<!-- class container는 해당 요소를 좌우로 중앙 정렬 -->
	    <div class="container">
	        <div class="navbar-header">
	        	<a class="navbar-brand" href="./welcome.jsp">Home</a>
	        	<a class="navbar-brand" href="./welcome.jsp">Home</a>
	        </div>
	    </div>
	</nav>

	<%! //자바 코드를 실행하는 부분. <%!는 선언, <%는 일반 코드, <%=은 출력 영역으로 쓰인다.
	//변수, method 선언
	String greeting = "Welcome to Web Shopping Mall";
	String tagline = "Welcome to Web Market!";
	%>
	
	<% 
	//java 코드 영역. 변수 선언도 가능
	//out.println("<h1>hello world!!!!!!!!!!!</h1>");
	%>
	
	<!-- p-5: 전체 패딩 5(굉장히 많음). 3이 보통 -->
	<div class="p-5 bg-primary text-white rounded">
    	<div class="container">
    		<!-- container = 가운데 정렬 -->
    		<h1 class="display-3">
    		<!-- display-3: 큰 글자 중에 보통 크기 -->
    		<%= greeting %>
    	</h1>
    </div>
</div>

	<div class="container">
		<div class="text-center"> <!-- text-center는 텍스트를 가운데로 -->
			<h3> <%= tagline %> </h3>
			<%
			Date today = new Date();
			
			SimpleDateFormat format = new SimpleDateFormat("hh:mm:ss a");
					
			out.println("현재 접속시간: " + format.format(today));
			%>
		</div>
	</div>


	<footer class="container"> <!-- footer는 홈페이지 정보 저작권 정보 등이 담긴 사이트 하단 영역 -->
		<p>&copy;WebMarket</p>
	</footer>
</body>
</html>