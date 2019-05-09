<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<!-- Mobile Specific Meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/flat-icon/font/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<!-- Syntax Highlighter -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/syntax-highlighter/styles/shCore.css" media="all">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/syntax-highlighter/styles/shThemeDefault.css" media="all">
<!-- Font Awesome CSS-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css">
<!-- Normalize/Reset CSS-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/normalize.min.css">
<!-- Main CSS-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/flat-icon/font/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<title>stravel</title>
</head>
<body id="welcome">
<aside class="left-sidebar" style="height:100%; overflow:scroll;">
            <div class="logo">
                <a href="main.do">
                    <img src="${pageContext.request.contextPath }/resources/img/logo.png" alt="">
                </a>
            </div>
            <nav class="left-nav">
                <ul id="nav">
                    <li class="current"><a href="#">회원관리</a>
                    	<ol>
                    		<li><a href="#">-사용자</a></li>
                    		<li><a href="#">-사업자</a></li>
                    	</ol>
                    </li>
                    <li class="current"><a href="#">통계관리</a>
                    	<ol>
                    		<li><a href="#">-사용자</a></li>
                    		<li><a href="#">-사업자</a></li>
                    	</ol>
                    </li>
                    <li class="current"><a href="#">관광지관리</a></li>
                    <li class="current"><a href="#">식당관리</a></li>
                    <li class="current"><a href="#">고객센터관리</a>
                    	<ol>
                    		<li><a href="#">-1:1문의</a></li>
                    		<li><a href="#">-공지사항</a></li>
                    		<li><a href="#">-FAQ</a></li>
                    	</ol>
                    </li>
                    <li class="current"><a href="#">커뮤니티관리</a>
                    	<ol>
                    		<li><a href="#">-일정공유</a></li>
                    		<li><a href="#">-동행찾기</a></li>
                    	</ol>
                    </li>
                </ul>
            </nav>
        </aside>
        <div class="nav-right text-center text-lg-right py-4 py-lg-0">
             	<a class="nav-link" href="#">login</a>
            </div>
<script src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.ajaxchimp.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/mail-script.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/skrollr.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.nav.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/syntax-highlighter/scripts/shCore.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/syntax-highlighter/scripts/shBrushXml.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/syntax-highlighter/scripts/shBrushCss.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/syntax-highlighter/scripts/shBrushJScript.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/syntax-highlighter/scripts/shBrushPhp.js"></script> 
<script type="text/javascript">
	SyntaxHighlighter.all()
</script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/custom.js"></script>
                </li>
                <li class="active">
                    <a href="#">
                        <i class="pe-7s-graph"></i>
                        <p>커뮤니티관리</p>
                        <ul>
                        <li><a href="#">-일정공유</a></li>
                    	<li><a href="#">-동행찾기</a></li>
                        </ul>
                    </a>
                </li>
            </ul>
    	</div>
    </div>
    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">관리자</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
                            </a>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="#">
                               login
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    <!--   Core JS Files   -->
    <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath }/resources/assets/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="${pageContext.request.contextPath }/resources/assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>
	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="${pageContext.request.contextPath }/resources/assets/js/demo.js"></script>
</body>
</html>