<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<form name="newProduct" action="processAddproduct.jsp" method="post" enctype="multipart/form-data">
		<div>
			<p>상품코드</p>
			<input type="text" name="productId">
		</div>
		<div>
			<p>상품명</p>
			<input type="text" name="pname">
		</div>
		<div>
			<p>상품가격</p>
			<input type="text" name="unitPrice">
		</div>
		<div>
			<p>상품설명</p>
			<input type="text" name="description">
		</div>
		<div>
			<p>제조사</p>
			<input type="text" name="manufacturer">
		</div>
		<div>
			<p>분류</p>
			<input type="text" name="category">
		</div>
		<div>
			<p>재고수</p>
			<input type="text" name="unitsInStock">
		</div>
		<div>
			<p>신상</p>
			<input type="radio" name="condition" value="신상품"> <br>
			<p>중고</p>
			<input type="radio" name="condition" value="중고품"> <br>
			<p>재생</p>
			<input type="radio" name="condition" value="재생품"> <br>
		</div>
		<div>
			<p>이미지</p>
			<input type="file" name="image">
		</div>
		<div>
			<input type="submit" value="등록">
		</div>
	
	</form>
	

</body>
</html>