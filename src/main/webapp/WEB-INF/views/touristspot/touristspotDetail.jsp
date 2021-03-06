﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stravel</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/star-rating.js" type="text/javascript"></script>
<!-- 구글폰트 -->
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans"	rel="stylesheet">
<script type="text/javascript">
$(document).ready(function(){
$(':radio[name="stars"]').change(function() {
	  console.log('New star rating: ' + this.value);
	  $('#review_point').val(this.value);
	});
});

$(document).ready(function(){
	$("input:radio[name='stars2']:radio[value='${point}']").prop('checked', true);

});

</script>
</head>
<style>
#c1, #c2 {
	border: 1px dotted black;
}

#f1 {
	font-family: 'Black Han Sans', sans-serif;
}

.rating {
	display: inline-block;
	position: relative;
	height: 30px;
	line-height: 30px;
	font-size: 30px;
}

.rating label {
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	cursor: pointer;
}

.rating label:last-child {
	position: static;
}

.rating label:nth-child(1) {
	z-index: 5;
}

.rating label:nth-child(2) {
	z-index: 4;
}

.rating label:nth-child(3) {
	z-index: 3;
}

.rating label:nth-child(4) {
	z-index: 2;
}

.rating label:nth-child(5) {
	z-index: 1;
}

.rating label input {
	position: absolute;
	top: 0;
	left: 0;
	opacity: 0;
}

.rating label .icon {
	float: left;
	color: transparent;
}

.rating label:last-child .icon {
	color: #000;
}

.rating:not(:hover) label input:checked ~ .icon,
.rating:hover label:hover input ~ .icon {
  color: #09f;
}

.rating label input:focus:not (:checked ) ~ .icon:last-child {
	color: #000;
	text-shadow: 0 0 5px #09f;
}

#map {
	height: 400px;
	width: 100%;
}
</style>
    <script type="text/javascript">    
    var map;
	var marker;
      function geoCode() {
    	  	var faddr_lat = ${touristspot.touristspot_latitude };
    		var faddr_lng = ${touristspot.touristspot_longitude };
    	  var faddr = document.getElementById('address').value;
    	  	var geocoder;
    	  	geocoder = new google.maps.Geocoder();
    	  	geocoder.geocode( { 'address': faddr}, function(results, status) {
    	  		if (status == google.maps.GeocoderStatus.OK) {
    	  			var faddr_lat = results[0].geometry.location.lat();	//위도
    	  			var faddr_lng = results[0].geometry.location.lng();	//경도
    	  		} else {
    	  			var faddr_lat = ${touristspot.touristspot_latitude };
    	  			var faddr_lng =  ${touristspot.touristspot_longitude };
    	  		}
    	  		map = new google.maps.Map(document.getElementById('map'), {
        	        center: {lat: faddr_lat, lng: faddr_lng},
        	        zoom: 15});
    	  		
    	  		marker = new google.maps.Marker({
    	                position: {lat: faddr_lat, lng: faddr_lng},
    	                map: map/* ,
    	                title: 'Hello World!' */
    	            });
    	  		return;
    	  	});	
    	  }
      
    </script>  
</head>
<body>
	<c:import url="../common/header.jsp" />
	<section class="section-margin">
		<div class="content">
			<div class="container-fluid">
				<div class="container" id="c1">
					<h1 id="f1">${touristspot.touristspot_name }</h1>
					<div>
						<div id="carouselExampleIndicators" class="carousel slide"
							data-ride="carousel" style="width: 100%; height: 600px;">
							<ol class="carousel-indicators">
								<c:forEach items="${touristspotImages }" var="tsi">
									<li data-target="#carouselExampleIndicators"
										data-slide-to="${tsi.touristspot_sq }"
										<c:if test="${tsi.touristspot_sq eq 1 }"> class="active" </c:if>></li>
								</c:forEach>
							</ol>
							<div class="carousel-inner" style="height: 100%;">
								<c:forEach items="${touristspotImages }" var="tsi">
									<c:if test="${tsi.touristspot_sq eq 1 }">

										<div class="carousel-item active" style="height: 100%;">
											<img class="d-block w-100"
												src="${ pageContext.request.contextPath }/resources/files/touristspotImages/${tsi.touristspot_imagename}"
												alt="${tsi.touristspot_imagename}" style="height: 100%;">
										</div>

									</c:if>
									<c:if test="${tsi.touristspot_sq > 1 }">
										<div class="carousel-item" style="height: 100%;">
											<img class="d-block w-100"
												src="${ pageContext.request.contextPath }/resources/files/touristspotImages/${tsi.touristspot_imagename}"
												alt="${tsi.touristspot_imagename}" style="height: 100%;">
										</div>

									</c:if>
								</c:forEach>
							</div>
							<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev"> 
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a> 
							<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next"> 
								<span class="carousel-control-next-icon"aria-hidden="true"></span> 
								<span class="sr-only">Next</span>
							</a>
						</div>
					</div>
					<hr>
					<div>${touristspot.touristspot_content }</div>
					<hr>
					<div class="row">
						<div class="col-md-6">
							<div id="map"></div>
							<input type="hidden" id="address" />
							<script	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDThTAj0AKRlW45lmKFY65_OkQylWQBmeg&callback=geoCode"async defer></script>
						</div>
						<div class="col-md-6">
							주소 :${touristspot.touristspot_address }<br> 홈페이지 : <a
								href="${touristspot.touristspot_homepage }">홈페이지 접속하기</a><br>
							전화번호 : ${touristspot.touristspot_tel }<br>

							<c:if test="${touristspot.touristspot_open eq null }">24시간 오픈<br></c:if>
							<c:if test="${touristspot.touristspot_open != null }">
							오픈시간 : ${touristspot.touristspot_open }<br>
							닫는시간 : ${touristspot.touristspot_closed }<br>
							</c:if>
							<c:if test="${!empty point2 }">평점 : ${point2 }<br>
							<form class="rating">
								<label> 
									<input type="radio" name="stars2" value="1" /> 
									<span class="icon">★</span>
									</label> 
									<label> 
										<input type="radio" name="stars2" value="2" /> 
										<span class="icon">★</span> 
										<span class="icon">★</span>
									</label> 
									<label> 
										<input type="radio" name="stars2" value="3" /> 
										<span class="icon">★</span> 
										<span class="icon">★</span> 
										<span class="icon">★</span>
									</label> 
									<label> 
										<input type="radio" name="stars2" value="4" /> 
										<span class="icon">★</span>
										<span class="icon">★</span>
										<span class="icon">★</span>
										<span class="icon">★</span>
									</label> 
									<label> 
										<input type="radio" name="stars2" value="5" /> 
										<span class="icon">★</span> 
										<span class="icon">★</span> 
										<span class="icon">★</span> 
										<span class="icon">★</span> 
										<span class="icon">★</span>
									</label>
							</form>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br>
		<div class="container" id="c2">
			리뷰 : ${fn:length(touristspotReviews)}
			<table>

				<c:forEach items="${touristspotReviews }" var="tsr">
					<tr>
						<th width="10%" >${tsr.review_writer }</th>
						<td width="70%">
						<c:if test="${tsr.review_blind eq 'Y' }">블라인드 된 글입니다.</c:if>
						<c:if test="${tsr.review_blind eq 'N' }">${tsr.review_content }</c:if>
						</td>
						<th width="10%">${tsr.review_date }</th>
						<th>
						<c:if test="${loginMember.user_name eq tsr.review_writer }">
							&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-primary" onclick="location.href='reviewDeleteUser.do?rno=${tsr.review_no}&tno=${touristspot.touristspot_no }'">리뷰 삭제</button>
						</c:if>
						</th>
					</tr>
				</c:forEach>
			</table>
		</div>
		<br>
		<c:if test="${!empty loginMember }">
		<div class="container" id="c2">
			<font>리뷰 작성</font> <br>
			<div>
				<font>평점</font>&nbsp;&nbsp;&nbsp;
				<form class="rating">
					<label> 
						<input type="radio" name="stars" value="1" /> 
						<span class="icon">★</span>
					</label> 
					<label> 
						<input type="radio" name="stars" value="2" /> 
						<span class="icon">★</span> 
						<span class="icon">★</span>
					</label> 
					<label> 
						<input type="radio" name="stars" value="3" /> 
						<span class="icon">★</span> 
						<span class="icon">★</span> 
						<span class="icon">★</span>
					</label> 
					<label> 
						<input type="radio" name="stars" value="4" /> 
						<span class="icon">★</span>
						<span class="icon">★</span>
						<span class="icon">★</span>
						<span class="icon">★</span>
					</label> 
					<label> 
						<input type="radio" name="stars" value="5" /> 
						<span class="icon">★</span> 
						<span class="icon">★</span> 
						<span class="icon">★</span> 
						<span class="icon">★</span> 
						<span class="icon">★</span>
					</label>
				</form>
			</div>
			
			<form action="insertTourReview.do" method="post">
				<table>
					<tr>
						<td>
							방문일 : <input type="date" name="review_tourdate" required="required"/> 
							<input type="hidden" id="review_point" name="review_point" value="1" /> 
							<input type="hidden" name="touristspot_no" value="${touristspot.touristspot_no }">
							<input type="hidden" name="review_writer" value="${loginMember.user_name }" />
						</td>
					</tr>
					<tr>
						<td>
							<textarea rows="4" cols="100%" name="review_content"></textarea>
						</td>
						<td>
							<input type="submit" value="작성" />
						</td>
					</tr>
				</table>
			</form>
		</div>
		</c:if>
	</section>
	<c:import url="../common/footer.jsp" />
</body>
</html>