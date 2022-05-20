<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dto.Product" %>
    <!-- dao : data access object / dto: data transfer object -->
<jsp:useBean id="repository" class="dao.ProductRepository" scope="session"/>
			<!-- session은 서버 측에 저장 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap cdn -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<title>상세 정보</title>
</head>
<body>

	<jsp:include page="menu.jsp"/>

	<div class="p-5 bg-primary text-white rounded">
	    	<div class="container">
	    		<!-- container = 가운데 정렬 -->
	    		<h1 class="display-3">
	    		<!-- display-3: 큰 글자 중에 보통 크기 -->
	    		상세 정보
	    	</h1>
	    </div>
	</div>
	<%
	//product.jsp?id=p1234 이런 식으로 넘어온 값 얻기
	String id = request.getParameter("id");
	Product product = repository.getProductById(id);
	%>
	
	<div class="container">
	    <div class="row">	
	    	<div class="col-md-6">
	    		<h3><%= product.getName() %></h3>
	    		<p><%= product.getDescription() %></p>			
	    		
	    		<p>
	    		<a href="#" class="btn btn-info">상품 주문 &raquo;</a>
				<a href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
	    		</p>
	    	</div>
	  </div>
</div>
    <jsp:include page="footer.jsp"/>
</body>
</html>