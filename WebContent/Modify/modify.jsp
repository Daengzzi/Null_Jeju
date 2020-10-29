<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>MODIFY</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="assets/css/styles.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css">
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans'>
        <!-- Bootstrap core CSS -->
        <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i" rel="stylesheet">  
        <!-- Custom styles for this template -->
        <link rel="icon" href="images/logo.png"/>
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="modify.css?ver=1">
        <script src="find.js"></script>
</head>
<body>
    <nav class="navbar navbar-light navbar-expand-xl fixed-top bg-white clean-navbar">
        <div class="container">
            <a class="navbar-brand logo" href="#">
                <img src="assets/img/img/logo.png"></a>
            <div class="search float-left float-md-right mt-0 mt-md-0 search-area">
                <i class="fas fa-search float-left search-icon"></i>
                <input class="float-left float-sm-right custom-search-input" type="search" placeholder="검색어를 입력하세요"></div>
                <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#" style="font-size: 16px; color:orange !important;">제주스토리</a>
                        <div class="dropdown-menu" style="border-style: none; background-color: orange;">
                            <a class="dropdown-item" href="#" style="color: white;">소개</a>
                            <a class="dropdown-item" href="#" style="color: white;">문화와 역사</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#" style="font-size: 16px; color:orange !important;">제주플레이스</a>
                        <div class="dropdown-menu" style="border-style: none; background-color: orange;">
                            <a class="dropdown-item" href="#" style="color: white;">제주시</a>
                            <a class="dropdown-item" href="#" style="color: white;">서귀포시</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#" style="font-size: 16px; color:orange !important;">나의여행</a>
                        <div class="dropdown-menu" style="border-style: none; background-color: orange;">
                            <a class="dropdown-item" href="#" style="color: white;">찜 목록</a>
                            <a class="dropdown-item" href="#" style="color: white;">내가 쓴 글</a>
                            <a class="dropdown-item" href="#" style="color: white;">회원정보수정</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" style="margin-right: 0px;">
                        <a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#" style="font-size: 16px; color:orange !important;">고객센터</a>
                        <div class="dropdown-menu" style="border-style: none; background-color: orange;">
                            <a class="dropdown-item" href="#" style="color: white;">Q&A</a>
                            <a class="dropdown-item" href="#" style="color: white;">공지사항</a>
                        </div>
                    </li>
                </ul>
                <a id="login" href="#" style="margin-right: 10px; font-size: 14px; color:#8a8a8a !important;">로그인</a>
                <a id="join" href="#" style="font-size: 14px; color:#8a8a8a !important;">회원가입</a></div>
        </div>
    </nav>
    <div class="clear"></div>
  <section>
    <div class="login-wrap">
      <div class="login-html">
          <input id="tab" type="radio" name="tab" class="sign-in" checked><label for="tab" class="tab" style="margin-left: 15px;" >비밀번호 변경</label>
          <div class="member-form">
            <div class="group">
                <label for="pass" class="label" style="margin-top: 50px;">Existing Password</label>
                <input id="pass" type="password" class="input" placeholder="기존 비밀번호">
            </div>
            <div class="group">
                <label for="pass" class="label">Change Password</label>
                <input id="pass" type="password" class="input" placeholder="변경 비밀번호">
            </div>
            <div class="group">
                <label for="pass" class="label">Repeat Password</label>
                <input id="pass" type="password" class="input" placeholder="변경 비밀번호 확인">
                  </div>
                  <div class="group" style="margin: 50px auto;">
                      <input type="submit" class="button" value="변경하기">
                      <div class="hr"></div>
                      <input type="submit" class="button" value="탈퇴하기">
                  </div>
                </div>
              </div>
        </div>
  </section>
    <footer id="footerpad" style="background-color: lightgray;">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-lg-8 mx-auto">
                    <ul class="list-inline text-center">
                        <li class="list-inline-item" ><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x" style="color: orange;"></i><i class="fa fa-facebook fa-stack-1x fa-inverse"></i></span></a></li>
                        <li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x" style="color: orange;"></i><i class="fa fa-twitter fa-stack-1x fa-inverse"></i></span></a></li>
                        <li class="list-inline-item"><a href="#"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x" style="color: orange;"></i><i class="fa fa-instagram fa-stack-1x fa-inverse"></i></span></a></li>
                    </ul>
                    <p class="copyright text-muted text-center" style="font-size: 10px;">Copyright © JEJUMARU, All rights reserved.<br></p>
                </div>
            </div>
        </div>
    </footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
    <script src="assets/js/script.min.js"></script>
</body>

</html>