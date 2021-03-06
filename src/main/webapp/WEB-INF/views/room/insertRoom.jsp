<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/linericon/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/flat-icon/font/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/jquery-ui.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/swiper.min.css">
	<!-- Animation library for notifications   -->
<link href="${pageContext.request.contextPath }/resources/assets/css/animate.min.css" rel="stylesheet"/>
<!--  Light Bootstrap Table core CSS    -->
<link href="${pageContext.request.contextPath }/resources/assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>
<!--     Fonts and icons     -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
<link href="${pageContext.request.contextPath }/resources/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

<style type="text/css">
@media ( max-width :1405px) {
	.ownerside {
		display: none;
	}
}

.irbt {
	-moz-box-shadow: inset 0px 39px 0px -24px #99b4ff;
	-webkit-box-shadow: inset 0px 39px 0px -24px #99b4ff;
	box-shadow: inset 0px 39px 0px -24px #99b4ff;
	background-color: #99b4ff;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	border-radius: 4px;
	border: 1px solid #99b4ff;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 15px;
	font-weight: bold;
	padding: 2px 5px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #99b4ff;
}

.irbt:hover {
	background-color: #99b4ff;
}

.irbt:active {
	position: relative;
	top: 1px;
}
 input[type=text],
 input[type=number]{
  width:100px;
 }
ul li a{
 width:120px;
}
ul{
padding:20px;
}
ul li {
width:131px;
margin:0px auto;
}


#titlediv {
	font-size: 1.5em;
	font-weight: bold;
	margin-left: 20px;
}
.ompm {
	border-left: 1px dashed #cfcfcf;
}
.ownerbody div img {
	width:200px;
	height:200px;

	
}
#ompmimg{
	width:290px; 
	height:200px; 
	text-align:center;
}
.ompm,
.ompm1{
	width:260px; 
	height:260px;
	display:table-cell; 
	cursor:pointer
}
.ompmtext{
	width:300;
	height:100px;
	padding:20px 50px 20px 50px;
}
#isroom div{ 
	margin:2px;
}
#isroom div input{
	border:0px;
	border-bottom:1px solid #cfcfcf;
}
#insertroombt{
	-moz-box-shadow: inset 0px 39px 0px -24px #99b4ff;
	-webkit-box-shadow: inset 0px 39px 0px -24px #99b4ff;
	box-shadow: inset 0px 39px 0px -24px #99b4ff;
	background-color: #99b4ff;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	border-radius: 4px;
	border: 1px solid #99b4ff;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 15px;
	font-weight: bold;
	padding: 2px 5px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #99b4ff;
}

</style>
</head>
<body>
<%-- <section class="section-margin">
	<c:import url="../common/header.jsp" />
    </section> --%>
    
<div style="width:100%; display:inline-block;">
		<div class="ownerside" style=" width:240px; height:700px; float:left;" ><!-- ownerside -->
		<div class="sidebar" data-color="purple" data-image="${pageContext.request.contextPath }/resources/assets/img/sidebar-5.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="ownerMain.do?owner_no=${loginOwner.owner_no }" class="simple-text">
                    STRAVEL
                </a>
            </div>
            <ul class="nav">
            	<li class="active">
            	<c:if test="${!empty loginOwner }">
            		<a href="logout.do"><i class="pe-7s-graph"></i><p>로그아웃</p></a>
            	</c:if>
            	</li>
				<li class="active">
                    <a href="#">
                        <i class="pe-7s-graph"></i>
                        <p>예약관리</p>
                        <ul>
                        <li><a href="orderList.do?owner_no=${loginOwner.owner_no }">오늘 예약건</a></li>
                    	<li><a href="passOrderList.do?owner_no=${loginOwner.owner_no }">지난 예약건</a></li>
                    	</ul>
                    </a>
                </li>
                <%-- <li class="active">
                    <a href="#">
                        <i class="pe-7s-graph"></i>
                        <p>마이페이지</p>
                        <ul>
                        <li><a href="roomSales.do?owner_no=${loginOwner.owner_no }">매출관리</a></li>
                    	<li><a href="#">후기관리</a></li>
                        </ul>
                    </a>
                </li> --%>
                <li class="active">
                    <a href="#">
                        <i class="pe-7s-graph"></i>
                        <p>객실관리</p>
                        <ul>
                        <li><a href="insertRoom.do">객실등록</a></li>
                    	<li><a href="updateRoomList.do?owner_no=${loginOwner.owner_no }">객실수정</a></li>
                        </ul>
                    </a>
                </li>
                <%-- <li class="active">
                <a href ="moveExtraUpdate.do"style="cursor:pointer" >
                	<c:if test="${ loginOwner.owner_approve eq '승인' }">
                	<i class="pe-7s-graph"></i>
                	<a><p>사업자<br>주소등록하기</p></a>
                	</c:if>
                	<c:if test="${loginOwner.owner_approve eq '미승인' }">
                	<i class="pe-7s-graph"></i>
                	<p>가입승인 대기중</p>
                	</c:if>
                	<i class="pe-7s-graph"></i>
                	</a>
                </li> --%>
            </ul>
    	</div>
    </div>
	</div><!-- ownerside  -->
		
		<div class="ownerbody"  style="width:69%; display:table-cell;"><!-- ownerbody -->
		<bR><BR><BR>
		<div style="width:900px;border:1px solid black; margin:0 auto; background:#edf7f8; padding:50px;">
			<div style="text-align:center; font-size:2em; margin-bottom:20px; color:black; font-weight:bold; ">객실등록</div>
			<div id="isroom" style="margin:20px; border:1px solid #cfcfcf; background:white;padding:30px;">
			<form action="insertRoomSub.do" method="post" enctype="multipart/form-data" >
				<input type="hidden" value="${loginOwner.owner_no }" name="owner_no">
				<div>객실정보</div>
				<hr>
				<div>객실명 : <input type="text" name="room_name" required></div>
				<div>최소인원 : <input type="number" min="2" max="10" name="min_no" required></div>
				<div>최대인원 : <input type="number" min="2" max="10" name="max_no" required></div>
				<div>객실정보 :</div>
				<textarea rows="7" cols="50" name="room_content" required></textarea>
				<br>
				<br>
				<br>
				<br>
				<div>가격정보</div>
				<hr>
				<div>비수기 :<input type="text" name="off_season_price" required></div>
				<div>성수기 :<input type="text" name="on_season_price" required></div>
				<div>주말추가 :<input type="text" name="week_extra_price" required></div>
				<div>인원추가 :<input type="text" name="add_person_price" required></div>
				<div>할인율 : <input type="number" min="0" max="100" step="5" name="discountrate">%</div>
				<br>
				<div>편의시설</div>
				<hr>
				<div>
					<table>
					<tr>
					<td><label for="wifi"><input type="checkbox" name="room_option" value="wifi" id="wifi">WI-FI</label></td>
					<td><label for="parking"><input type="checkbox" name="room_option" value="parking" id="parking">주차장</label></td>
					<td><label for="tv"><input type="checkbox" name="room_option" value="tv" id="tv">TV</label></td>
					<td><label for="fire"><input type="checkbox" name="room_option" value="fire"  id="fire">소화기</label></td>
					</tr>
					<tr>
					<td><label for="bed"><input type="checkbox" name="room_option" value="bed"   id="bed">침구/세면도구</label></td>
					<td><label for="cook"><input type="checkbox" name="room_option" value="cook"  id="cook">취사도구(식기구/접시/가스레인지or인덕션)</label></td>
					<td><label for="aircon"><input type="checkbox" name="room_option" value="aircon" id="aircon" >에어컨</label></td>
					<td><label for="heater"><input type="checkbox" name="room_option" value="heater" id="heater" >난방</label></td>
					</tr>
					<tr>
					<td><label for="gril"><input type="checkbox" name="room_option" value="gril" id="gril">그릴서비스</label></td>
					<td><label for="spa"><input type="checkbox" name="room_option" value="spa" id="spa">스파</label></td>
					<td><label for="breakfast"><input type="checkbox" name="room_option" value="breakfast" id="breakfast">조식</label></td>
					<td><label for="roomservice"><input type="checkbox" name="room_option" value="roomservice"  id="roomservice">룸서비스</label></td>
					</tr>
					</table>
				</div><br><Br>
				<div>사진 </div>
				<div>
				<input multiple="multiple" type="file" name="roomImg" class="multi with-preview"/>
				</div>
				<hr>
				<br>
				<div style="text-align:center;"><input type="submit" value="등록하기" class="irbt" style="margin-right:20px;"><input type="reset" value="취소하기" class="irbt"></div>
				
				</form>
			</div>
		</div>
	</div><!-- ownerbody -->
</div>


<!-- <div  class="bottombar" style="position:fixed; bottom:0px; width:100%; height:71px; border-top:1px solid black; z-index:10;background:white; opacity:0.8; ">
</div> -->
<div>
	<c:import url="../common/footer.jsp" />
</div>

	<script
		src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery.ajaxchimp.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/mail-script.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/skrollr.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/swiper.min.js"></script>
	<!-- 달력 -->
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-1.12.4.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-ui.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-ui.min.js"></script>
		
	<script src="${pageContext.request.contextPath }/resources/js/jquery.MultiFile.js" type="text/javascript" ></script>
		
	<script type="text/javascript">
		function check(){
			location.href="orderList.do";
		};
	
	</script>

</body>
</html>