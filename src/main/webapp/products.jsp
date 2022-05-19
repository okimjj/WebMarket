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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<title>상품 목록</title>
</head>
<body>

	<jsp:include page="menu.jsp"/>

	<div class="p-5 bg-primary text-white rounded">
	    	<div class="container">
	    		<!-- container = 가운데 정렬 -->
	    		<h1 class="display-3">
	    		<!-- display-3: 큰 글자 중에 보통 크기 -->
	    		상품 목록
	    	</h1>
	    </div>
	</div>
	<%
	List<Product> products = repository.getAllProducts();

	%>
	<div class="container">
	    <div class="row text-center">
	    <%
	    for(Product product : products){
	    %>	
	    	<div class="col-md-4">
	    		<h3><%= product.getName() %></h3>
	    		<p><%= product.getDescription() %></p>
	    		<p><%= product.getUnitPrice() %>원</p>
	    		<p><a class="btn btn-secondary" role="button" href="./product.jsp?id=<%= product.getProductId() %>">상세정보 &raquo;</a></p>
	    			
	    	</div>
	    <%	
	    }
	    %>

	    </div>
</div>
    <jsp:include page="footer.jsp"/>
</body>
</html>