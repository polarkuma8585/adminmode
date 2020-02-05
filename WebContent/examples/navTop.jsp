<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">  
  <script src="https://kit.fontawesome.com/466f6d08a6.js" crossorigin="anonymous"></script>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    	남빵 프로젝트 관리자 모드
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />  
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
  <!-- CSS Files -->
  <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="../assets/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />
  
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
    <decorator:head />
  </head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="white" data-active-color="danger">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="http://www.creative-tim.com" class="simple-text logo-mini">
          <div class="logo-image-small">
            <img src=""> <!-- 로고 이미지 -->
          </div>
        </a>
        <a href="" class="simple-text logo-normal"> <!-- 로고 옆 텍스트 링크 -->
          	남빵          
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="active">
            <a href="adminMain.jsp">
              <i class="nc-icon nc-laptop"></i>
              <p>대시보드</p>
            </a>
          </li>
          <li>
            <a href="#merchList" data-toggle="collapse" aria-expanded="false" aria-controls="merchList">
              <i class="nc-icon nc-cart-simple"></i>
              <p>상품관리</p>
            </a>
            <div class="collapse" id="merchList">
        		<ul class="nav">
        			<li>
		          	  <a href="merchList.jsp">
		              <i class="nc-icon nc-cart-simple"></i>
		              <p>상품목록관리</p>
			          </a>
                   </li>
              </ul>
            </div>  
          </li>          	
          <li>
            <a href="#pay" data-toggle="collapse" aria-expanded="false" aria-controls="pay">
              <i class="nc-icon nc-credit-card"></i>
              <p>결제관리</p>
            </a>
             <div class="collapse" id="pay">
        		<ul class="nav">
        			<li style=>
		          	  <a href="">
		              <i class="nc-icon nc-credit-card"></i>
		              <p>전체 결제 관리</p>
			          </a>
                   </li>
                   <li style=>
		          	  <a href="">
		              <i class="nc-icon nc-credit-card"></i>
		              <p>취소 / 환불</p>
			          </a>
                   </li>
              </ul>
            </div>
          </li>
          <li>
            <a href="#user" data-toggle="collapse" aria-expanded="false" aria-controls="user">
              <i class="nc-icon nc-single-02"></i>
              <p>고객관리</p>
            </a>
            <div class="collapse" id="user">
        		<ul class="nav">
        			<li style=>
		          	  <a href="">
		              <i class="nc-icon nc-single-02"></i>
		              <p>사용자 관리</p>
			          </a>
                   </li>
              </ul>
            </div>
          </li>
          <li>
            <a href="#seller" data-toggle="collapse" aria-expanded="false" aria-controls="seller">
              <i class="nc-icon nc-shop"></i>
              <p>판매자관리</p>
            </a>
            <div class="collapse" id="seller">
        		<ul class="nav">
        			<li style=>
		          	  <a href="">
		              <i class="nc-icon nc-shop"></i>
		              <p>판매자 관리</p>
			          </a>
                   </li>
              </ul>
            </div>
          </li>
          <li>
            <a href="#mlg" data-toggle="collapse" aria-expanded="false" aria-controls="mlg">
              <i class="nc-icon nc-money-coins"></i>
              <p>마일리지 관리</p>
            </a>
            <div class="collapse" id="mlg">
        		<ul class="nav">
        			<li style=>
		          	  <a href="">
		              <i class="nc-icon nc-money-coins"></i>
		              <p>마일리지 관리</p>
			          </a>
                   </li>
                   <li style=>
		          	  <a href="">
		              <i class="nc-icon nc-money-coins"></i>
		              <p>마일리지 설정 관리</p>
			          </a>
                   </li>
              </ul>
            </div>
          </li>
          <li>
            <a href="#bbs" data-toggle="collapse" aria-expanded="false" aria-controls="bbs">
              <i class="nc-icon nc-tile-56"></i>
              <p>게시판 관리</p>
            </a>
            <div class="collapse" id="bbs">
        		<ul class="nav">
        			<li style=>
		          	  <a href="">
		              <i class="nc-icon nc-tile-56"></i>
		              <p>게시물 관리</p>
			          </a>
                   </li>
              </ul>
            </div>
          </li>
          <li>
            <a href="#stastics" data-toggle="collapse" aria-expanded="false" aria-controls="stastics">
              <i class="nc-icon nc-chart-pie-36"></i>
              <p>통계분석</p>
            </a>
            <div class="collapse" id="stastics">
        		<ul class="nav">
        			<li style=>
		          	  <a href="">
		              <i class="nc-icon nc-chart-pie-36"></i>
		              <p>매출분석</p>
			          </a>
                   </li>
                   <li style=>
		          	  <a href="">
		              <i class="nc-icon nc-chart-pie-36"></i>
		              <p>상품분석</p>
			          </a>
                   </li>
              </ul>
            </div>
          </li>
          <li class="active-pro">

          </li>
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="#pablo">남빵 관리자 모드</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            <ul class="navbar-nav">             
              <li class="nav-item btn-rotate dropdown">
                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="nc-icon nc-bell-55"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Some Actions</span>
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Action</a>
                  <a class="dropdown-item" href="#">Another action</a>
                  <a class="dropdown-item" href="#">Something else here</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link btn-rotate" href="#pablo">
                  <i class="nc-icon nc-settings-gear-65"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Account</span>
                  </p>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link btn-rotate" href="">                
                  <i class="nc-icon nc-circle-10"></i>
                  <p>
                    <span class="d-md-block">Account</span>
                  </p>                
                </a>                
              </li>              
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <!-- <div class="panel-header panel-header-lg">

<div> Contents -->
      <div class="content">
			<decorator:body /> <!--  view page가 끼워질 위치  -->
      </div>
      
      <footer class="footer footer-black  footer-white ">
        <div class="container-fluid">
          <div class="row">
            <nav class="footer-nav">
              <ul>
                <li>
                  <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a>
                </li>
                <li>
                  <a href="http://blog.creative-tim.com/" target="_blank">Blog</a>
                </li>
                <li>
                  <a href="https://www.creative-tim.com/license" target="_blank">Licenses</a>
                </li>
              </ul>
            </nav>
            <div class="credits ml-auto">
              <span class="copyright">
                ©
                <script>
                  document.write(new Date().getFullYear())
                </script>, made with <i class="fa fa-heart heart"></i> by Creative Tim
              </span>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="../assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/paper-dashboard.min.js?v=2.0.0" type="text/javascript"></script>
  <!-- Paper Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/assets-for-demo/js/demo.js
      demo.initChartsPages();
    });
  </script>
</body>

</html>
