 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<style type="text/css">
/* table,tr,td,th,div {
 border: 1px solid black;
} */
</style>
</head>
<body>
<c:import url="../common/header.jsp"/>
<section class="section-margin">
<div class="content">
<div class="container">
<div class="row">
<!-- table 영역 시작 -->
<div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h3 class="title">My Info</h3>
                                <p class="category">${member.user_name } 님</p>
                            </div>
                            <hr>
                            <div>
                            <form action="mupdate.do" method="post" enctype="multipart/form-data" accept-charset="utf-8">
                            <div> 프로필 사진: <br>
                            <c:if test="${!empty member.user_picture  }">
                            <img alt="${member.user_picture }" src="${ pageContext.request.contextPath }/resources/files/memberProfile/${member.user_picture }" width="200" height="200">
                            </c:if>
                            <input type="file" name="upfile"></div>
                            <hr>
                            <div> 사용자 아이디 : <input type="text" value="${member.user_email }" name="user_email"/></div><hr>
                            <div> 사용자 비밀번호 : <input type="password" name="user_password"/></div><hr>
                            <div> 사용자 전화번호 : <input type="text" value="${member.user_phone }" name="user_phone"/></div><hr>
                            <div> 사용자 성별 : <c:if test="${member.gender eq 'M' }">남</c:if> <c:if test="${member.gender eq 'F' }">여</c:if></div><hr>
                            <div>
                            	<input type="hidden" value="${member.user_no }" name="user_no">
                            	<input type="hidden" value="${member.user_name }" name="user_name">

                            </div>
                            <div> <input type="submit"/></div>
                            </form>
							</div>
</div>
</div>
</div>
</div>
</div>
</section>
<c:import url="../common/footer.jsp"/>
</body>
</html>