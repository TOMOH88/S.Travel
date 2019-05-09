<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/flat-icon/font/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<style type="text/css">
   h5 {
      display:inline;
   }
   
 table, tr, th, td {
        border: 1px solid #bcbcbc;
    }
 
  
     #ptypetable input[type=button]{
      background-color:#bcbcbc; 
      color:blue; 
      border:0; 
      width:120px; 
      height:30px; 
      border-radius:5px;"
   }

</style>

<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js" ></script>
<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>

 

<title>stravel</title>
</head>
<body>
<c:import url="./common/header.jsp" />

<br><br><br>
<div align="center">
<h7 style="color:black;">1. 이용 규칙 및 상세 내용 </h7>
<h7>  >  </h7>
<h7 style="color:black;">  2. 사용자 정보 입력</h7>
<h7>  >  </h7>
<h7 style="color:blue;">  3. 확인 및 결제</h7>
</div>

<br>
<hr>
<br><br>

<div style="width:1650px; height:1000px; float:left;">
   <div style="width:16%; height:100%; float:left;"> <!-- 공백 -->
   </div>

   <div style="width:43%; height:100%; float:left;"> <!-- 메인 -->
   <br><br>
   <h2>확인 및 결제</h2>
   <br><br><hr>
   <br><br><br><br>
   <div style="width:100%; height:50%; float:left;">
   <div style="width:100%; height:50%; float:left;">
   인원 텍스트창 
   
   
   
   </div>
   
<table class="table" border="1" >
<tr>
   <th align="left" height="50">결제 방법</th>
</tr>
<tr>
   <th id="ptypetable" align="left">
      <input type="button" id="card" value="카드">&nbsp;
      <input type="button" id="trans" value="실시간계좌이체">&nbsp;
      <input type="button" id="vbank" value="가상계좌">&nbsp;
      <input type="hidden" id="ptype" name="ptype">
   </th>
</tr>
</table>
<br><br>
<hr>
<br><br><br>
<div>
<label for="agree">
	<input type="checkbox" id="agree" > 주문하실 상품 및 결제, 주문정보 확인하였으며 이에 동의합니다.(필수) 
</label>
<br><br>
<button id="order" style="background-color:#bcbcbc; color:blue; border:0; width:120px; height:30px; border-radius:5px;" onclick="pay()">확인 및 결제</button>
</div>


   </div>
</div>

<!-- 사이드박스 div -->

   <div style="width:25%; height:100%; float:left;"> <!-- 사이드 -->
<div style="width:5%; height:100%; float:left;"><!-- 공백 -->
</div>

<div style="width:90%; height:100%; float:left;"><!-- 사이드라인 -->
<div style="width:370px; height:500px; float:left; border:1; border-radius:30px; background-color:#E0FFFF;"><!-- 사이드박스 -->
<div style="width:100%; height:5%; float:top;"><!-- 공백 -->
<img src="${pageContext.request.contextPath }/resources/files/paymentImges/1.jpg" style="width:100px; height:70px;" align="right">
</div>
<div style="width:100%; height:90%; float:top;"><!-- 사이드값 -->
<div style="text-align:center;"><h6>서귀포 최고의 오션뷰 호텔연</h6></div>
<br>
<hr>
<br>
<div style="width:50%; height:100; float:left;">
인원 : 게스트 1명<br><br>
2019년 5월 5일<br><br>
₩59,000 X 1박<br><br>
서비스 수수료 <br><br>
<hr><br>
<div><h6>총 합계 (KRW)</h6></div>
<br><hr><br>
</div>
<div style="width:50%; height:100; float:left;">
<br><br>
 ~ 2019년 5월6일<br><br>
 <div style="text-align:right;">   ₩59,000</div>
 <br>
 <div style="text-align:right;">   ₩7,611</div>
 <br><hr><br>
 <div style="text-align:right;"><h6>₩66,611</h6></div>
 <br><hr>
</div>



<div style="width:100%; height:5%; float:top;"><!-- 공백 -->
</div>









</div>

</div><!-- 사이드박스 -->


</div><!-- 사이드라인 -->

   </div><!-- 사이드 -->
</div> <!-- 전체 -->







<script>
function pay(){

   IMP.init('imp99225181');
   
   IMP.request_pay({
       pg : 'html5_inicis',
       pay_method : $("#ptype").val(),
       merchant_uid : 'merchant_' + new Date().getTime(),
       name : '주문명:결제테스트',
       amount : 14000,
       buyer_email : 'iamport@siot.do',
       buyer_name : '구매자이름',
       buyer_tel : '010-1234-5678',
       buyer_addr : '서울특별시 강남구 삼성동',
       buyer_postcode : '123-456'
   }, function(rsp) {
       if ( rsp.success ) {
           var msg = '결제가 완료되었습니다.';
           msg += '고유ID : ' + rsp.imp_uid;
           msg += '상점 거래ID : ' + rsp.merchant_uid;
           msg += '결제 금액 : ' + rsp.paid_amount;
           msg += '카드 승인번호 : ' + rsp.apply_num;
       } else {
           var msg = '결제에 실패하였습니다.';
           msg += '에러내용 : ' + rsp.error_msg;
       }

       alert(msg);
   });
 }
//결제방법 선택

$("#ptype").val($("#card").attr("id"));

$("#card").click(function(){
   $("#ptype").val($("#card").attr("id"));

   $("#card").css("background", "white");
   $("#trans").css("background", "#bcbcbc");
   $("#vbank").css("background", "#bcbcbc");
});

$("#trans").click(function(){
   $("#ptype").val($("#trans").attr("id"));
   
   $("#card").css("background", "#4ddbff");
   $("#trans").css("background", "white");
   $("#vbank").css("background", "#4ddbff");
});

$("#vbank").click(function(){
   $("#ptype").val($("#vbank").attr("id"));
   
   $("#card").css("background", "#4ddbff");
   $("#trans").css("background", "#4ddbff");
   $("#vbank").css("background", "white");
});

//필수체크방식 체크 될 시 버튼 활성화
$("#order").attr("disabled", true);
$("#order").css("background", "white");

$("#agree").change(function(){
	if($("#agree").is(":checked") == true ){
		$("#order").attr("disabled", false);
		$("#order").css("background", "#bcbcbc");
	}else{
		$("#order").attr("disabled", true);
		$("#order").css("background", "white");
	}		
});	

 </script>









<script src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/jquery.ajaxchimp.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/mail-script.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/skrollr.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
<c:import url="common/footer.jsp" />
</body>
</html>