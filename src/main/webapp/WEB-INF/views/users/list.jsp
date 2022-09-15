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
<div class="container"><br/>
	<h3 id="font-h3">회원리스트</h3>
	
	<!-- 검색 영역 시작-->
	<form action="/users/list" class="form-inline d-flex justify-content-end"
		method="GET">
		<select name="field" id="field" class="form-control form-control-sm">
			<option value="USERID">아이디</option>
			<option value="USERNICKNAME">닉네임</option>
		</select> 
		<input type="text" id="word" name="word" class="form-control form-control-sm"
			style="margin: 10px;"> 
		<input type="submit" class="btn btn-outline-info btn-sm" value="검색">
	</form>
	<!-- 검색 영역 끝 -->

	<!-- 테이블 영역 시작-->
	<table class="table table-hover">
	
	<caption>회원 수: ${ulist.totalElements}</caption><!-- 회원 수 -->
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>이메일</th>
			<th>가입일</th>
			<td>상세조회</td>
			<td>탈퇴</td>
		</tr>
		<c:forEach items="${ulist.content}" var="user">
			<tr>
				<td>${user.id}</td>
				<td>${user.USERID}</td>
				<td>${user.USER_EMAIL}</td>
				<td>${user.USER_REGDATE}</td>
				<td> <a href='/users/detail?id=<c:out value="${user.id}"/>'>이동 </a>  </td>
				<td> <a  onclick="return confirm('정말로 탈퇴시키겠습니까?');" href="/users/list/${user.id}">탈퇴</a>   </td>
			</tr>
		</c:forEach>
	</table>
	<!-- 테이블 영역 끝 -->
	
	<!-- 페이징 영역 시작 -->
	<div class="text-xs-center">
		<ul class="pagination justify-content-center">
		
			<!-- 이전 -->
			<c:choose>
				<c:when test="${ulist.first}"></c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link" href="/users/list/?field=${param.field}&word=${param.word}&page=0">처음</a></li>
					<li class="page-item"><a class="page-link" href="/users/list/?field=${param.field}&word=${param.word}&page=${ulist.number-1}">&larr;</a></li>
				</c:otherwise>
			</c:choose>

			<!-- 페이지 그룹 -->
			<c:forEach begin="${startBlockPage}" end="${endBlockPage}" var="i">
				<c:choose>
					<c:when test="${ulist.pageable.pageNumber+1 == i}">
						<li class="page-item disabled"><a class="page-link" href="/users/list/?field=${param.field}&word=${param.word}&page=${i-1}">${i}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="/users/list/?field=${param.field}&word=${param.word}&page=${i-1}">${i}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			
			<!-- 다음 -->
			<c:choose>
				<c:when test="${ulist.last}"></c:when>
				<c:otherwise>
					<li class="page-item "><a class="page-link" href="/users/list/?field=${param.field}&word=${param.word}&page=${ulist.number+1}">&rarr;</a></li>
					<li class="page-item "><a class="page-link" href="/users/list/?field=${param.field}&word=${param.word}&page=${ulist.totalPages-1}">마지막</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
	<!-- 페이징 영역 끝 -->
</div>



</body>
</html>