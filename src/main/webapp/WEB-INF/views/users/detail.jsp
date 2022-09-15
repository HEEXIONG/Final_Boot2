<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
상세 조회 페이지

<div> <c:out value="${users.id}"></c:out></div>
<div> <c:out value="${users.USERID}"></c:out></div>
<div> <c:out value="${users.USER_PW}"></c:out></div>
<div> <c:out value="${users.USERNICKNAME}"></c:out></div>
<div> <c:out value="${users.USER_PHONE}"></c:out></div>
<div> <c:out value="${users.USER_EMAIL}"></c:out></div>
<div> <c:out value="${users.USER_POST}"></c:out></div>
<div> <c:out value="${users.USER_ADDR1}"></c:out></div>
<div> <c:out value="${users.USER_ADDR2}"></c:out></div>
<div> <c:out value="${users.USER_REGDATE}"></c:out></div>

<div> <c:out value="${authorities.USERID}"></c:out></div>

<div> <c:out value="${userProfile.uuid}"></c:out></div>

</body>
</html>