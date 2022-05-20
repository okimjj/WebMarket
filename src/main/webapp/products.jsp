<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
    <!-- dao : data access object / dto: data transfer object -->

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
    out.println(session.getAttribute("foods"));
	out.println(session.getAttribute("name"));
	out.println(session.getAttribute("age"));
	
	ProductRepository repository = ProductRepository.getInstance();
	List<Product> products = repository.getAllProducts();
	%>
	<div class="container">
	    <div class="row text-center">
	    <%
	    for(Product product : products){
	    %>	
	    	<div class="col-md-4">
	    		<h3><%= product.getName() %></h3> <!-- 제품 이름 출력 -->
	    		<p><%= product.getDescription() %></p> <!-- 제품 설명 출력 -->
	    		<p><%= product.getUnitPrice() %>원</p> <!-- 제품 가격 출력 -->
	    		<p><a class="btn btn-secondary" role="button" href="./product.jsp?id=<%= product.getProductId() %>">상세정보 &raquo;</a></p>
	    			<!-- 상세 정보로 이동하는 버튼 만들기 -->
	    			
	    	</div>
	    <%	
	    }
	    %>

	    </div>
</div>
    <jsp:include page="footer.jsp"/> <!-- 홈페이지 하단의 footer 영역 -->
</body>
</html>