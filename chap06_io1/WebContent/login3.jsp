<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%> <!-- UTF-8을 통해서 한글 출력, get 방식만 적용 -->
<!-- Date함수를 사용하기 위해 import를 통해 java.util.* 를 선언 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8"); // post방식에서 한글을 사용할 경우 사용되는 코드
	String uid = request.getParameter("id");
	String res = "<h3>사용자 아이디: " + uid + "</h3>";
	res += "<br>로그인 시간: " + (new Date()).toString(); // 로그인 시간 출력
	out.print(res); // out.print는 서블릿의 response.getWriter()와 같은 거
%>
</body>
</html>