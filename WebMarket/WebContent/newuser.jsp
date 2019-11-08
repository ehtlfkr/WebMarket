<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<form name="newUser" action="processAdduser.jsp" method="post">
		<div>
			<p>아이디</p>
			<input type="text" name="id">
		</div>
		<div>
			<p>비밀번호</p>
			<input type="password" name="password">
		</div>
		<div>
			<p>이름</p>
			<input type="text" name="name">
		</div>
		<div>
			<input type="submit" value="회원가입">
		</div>
	
	</form>
	

</body>
</html>