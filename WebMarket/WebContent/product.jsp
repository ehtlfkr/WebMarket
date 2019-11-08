<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.product"%>
<%@ page import="dao.productlist"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<h1>상품 정보</h1> <br>
	
	<%
		String id = request.getParameter("id");
		productlist dao = productlist.getInstance();
		product product = dao.getProductById(id);
	%>
	<div>
		<div>
			<img alt="image" src="./images/<%= product.getImage() %>">
		</div>
		<div>
			<h1>상품코드 : <%= product.getProductId() %></h1>
			<p>상품명 : <%= product.getPname() %></p>
			<p>상품가격 : <%= product.getUnitPrice() %></p>
			<p>상품설명 : <%= product.getDescription() %></p>
			<p>제조사 : <%= product.getManufacturer() %></p>
			<p>분류 : <%= product.getCategory() %></p>
			<p>재고수 : <%= product.getUnitsInStock() %></p>
			<p><%= product.getCondition() %></p>
			
		</div>
		
	</div>
	

</body>
</html>