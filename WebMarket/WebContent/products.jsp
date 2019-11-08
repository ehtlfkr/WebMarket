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

	<h1>상품 목록</h1> <br>
	
	<%
		productlist dao = productlist.getInstance();
		ArrayList<product> list = dao.getAllProducts();
	%>
	<ul>
		<%
			for(int i=0; i < list.size(); i++ ){
				product product = list.get(i);
		%>
		<li>
			<a href="product.jsp?id=<%= product.getProductId()%>">
				<img alt="image" src="./images/<%= product.getImage()%>"style="width: 300px;">
				<h1><%= product.getPname() %></h1>
				<p>분류 : <%= product.getCategory() %></p>
				<p>가격 : <%= product.getUnitPrice() %> 원</p>
				<p>재고수 : <%= product.getUnitsInStock() %> 개</p>
				<p>제조사 : <%= product.getManufacturer() %></p>
			</a>
		</li>
		<%
			}
		%>
	</ul>
	

</body>
</html>