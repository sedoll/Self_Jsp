<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UserDAO"%>
<%
	request.setCharacterEncoding("utf-8");

	String uid = request.getParameter("id");
	String upw = request.getParameter("pw");
	String uname = request.getParameter("na");
	
	UserDAO dao = new UserDAO();
	if(dao.exists(uid)) {
		out.print("이미 가입한 회원입니다.");
		return;
	}
	
	if(dao.insert(uid, upw, uname)) {
		out.print("회원가입이 완료되었습니다.");
	} else {
		out.print("회원가입 처리 중 오류가 발생했습니다.");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>