<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- jstl을 사용하기 위한 선언 -->

<!DOCTYPE html>
<html lang="ko">
<head>

	<!-- bootstrap을 css cdn -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" type="text/css" />
	<!-- jquery cdn -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<!-- 파일 등록을 위해 enctype="multipart/form-data" 을 선언 -->
		<form action="insertBoard" class="form-horizontal" id="frm" name="frm" method="post" enctype="multipart/form-data">
			<!-- class에 사용되는 form-group, row 등은 부트스트랩에서 사용되는 class -->
			<div class="form-group row">
				<label class="col-sm-2 col-xs-12 col-form-label" for="title">제목</label>
				<div class="col-sm-10 col-xs-12">
					<input class="form-control" id="title" name="title" placeholder="제목" type="text" value="" />
				</div>
			</div>
	
			<div class="form-group row">
				<label class="col-sm-2 col-xs-12 col-form-label" for="content">내용</label>
				<div class="col-sm-10 col-xs-12">
					<textarea rows="5" class="form-control" id="content" name="content" placeholder="내용"></textarea>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2 col-xs-12 col-form-label" for="bfile">파일</label>
				<div class="col-sm-10 col-xs-12">
					<input class="form-control" id="bfile" name="bfile" type="file"/>
				</div>
			</div>
	
			<div class="form-group row">
				<div class="col-sm-12">
					<a class="btn btn-success" href="#" onclick="boardIn();return false;" role="button" title="저장"><i class="fa fa-save"></i> 저장</a>
					<a class="btn btn-primary" href="boardarticlelist.sd" role="button" title="리스트"><i class="fa fa-list-ul"></i> 리스트</a>
				</div>
			</div>
	
		</form>
	</div>
	<script type="text/javascript">
		function boardIn(){
			$('#frm').submit();
		}
	</script>
</body>
</html>