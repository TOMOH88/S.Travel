<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
</script>
<style type="text/css">
*, *:before, *:after{
  margin: 0;
  padding: 0;
  -webkit-box-sizing: border-box;
  -moz-box-sizing:border-box;
  box-sizing: border-box;
}

.main-title{
  color: #2d2d2d;
  text-align: center;
  text-transform: capitalize;
  padding: 0.7em 0;
}

@media screen and (max-width: 640px){
  .container{
    display: block;
    width: 100%;
  }
}

@media screen and (min-width: 900px){
  .container{
    width: 33.33333%;
  }
}

.container .title{
  color: #1a1a1a;
  text-align: center;
  margin-bottom: 10px;
}

.content {
  position: relative;
  width: 90%;
  max-width: 400px;
  margin: auto;
  overflow: hidden;
}

.content .content-overlay {
  background: rgba(0,0,0,0.7);
  position: absolute;
  height: 99%;
  width: 100%;
  left: 0;
  top: 0;
  bottom: 0;
  right: 0;
  opacity: 0;
  -webkit-transition: all 0.4s ease-in-out 0s;
  -moz-transition: all 0.4s ease-in-out 0s;
  transition: all 0.4s ease-in-out 0s;
}

.content:hover .content-overlay{
  opacity: 1;
}

.content-image{
  width: 100%;
}

.content-details {
  position: absolute;
  text-align: center;
  padding-left: 1em;
  padding-right: 1em;
  width: 100%;
  top: 50%;
  left: 50%;
  opacity: 0;
  -webkit-transform: translate(-50%, -50%);
  -moz-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  -webkit-transition: all 0.3s ease-in-out 0s;
  -moz-transition: all 0.3s ease-in-out 0s;
  transition: all 0.3s ease-in-out 0s;
}

.content:hover .content-details{
  top: 50%;
  left: 50%;
  opacity: 1;
}

.content-details h3{
  color: #fff;
  font-weight: 500;
  letter-spacing: 0.15em;
  margin-bottom: 0.5em;
  text-transform: uppercase;
}

.content-details p{
  color: #fff;
  font-size: 0.8em;
}

.fadeIn-bottom{
  top: 80%;
}

.fadeIn-top{
  top: 20%;
}

.fadeIn-left{
  left: 20%;
}

.fadeIn-right{
  left: 80%;
}
</style>
</head>
<body>
<c:import url="../common/header.jsp" />
<!--================Tour section Start =================-->
<section class="section-margin pb-xl-5">
<div class="container">
<font>나의일정보기</font>
<input type="button" value="일정 만들기" class="btn btn-info" onclick="location.href='searchcalendar.do'">
</div>
<br>
<div class="container">
<div class="row">
  <div class="content">
<a href="scalendar.do">
<div class="content-overlay"></div>
<img src="${pageContext.request.contextPath }/resources/img/maldives-1993704_1920.jpg" style="height:300px;">
  <div class="content-details fadeIn-top">
        <h3>일정1</h3>
        <p>클릭시 일정상세보기</p>
        <p>2019-04-03 (화)</p>
        <a href="upcalendar.do">수정</a>
        <a href="#">삭제</a>
      </div>
    </a>
  </div>
  <div class="content">
<a href="scalendar.do">
<div class="content-overlay"></div>
<img src="${pageContext.request.contextPath }/resources/img/maldives-1993704_1920.jpg" style="height:300px;">
  <div class="content-details fadeIn-top">
        <h3>일정2</h3>
        <p>클릭시 일정상세보기</p>
        <a href="#">수정</a>
        <a href="#">삭제</a>
      </div>
    </a>
  </div>
  </div>
</div>
</section>
<!--================Tour section End =================-->
<c:import url="../common/footer.jsp" />
</body>
</html>