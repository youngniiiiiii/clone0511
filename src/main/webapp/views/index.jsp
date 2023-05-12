<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="/js/index0421.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <%--īī����--%>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=da86c8457c75372952796f5bbc52cb25"></script>
    <%--HighChart--%>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/series-label.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
    <script src="https://code.highcharts.com/highcharts-3d.js"></script>
    <script src="https://code.highcharts.com/modules/data.js"></script>
    <style>
        <%--navbar--%>
        .logo {
            font-size: 30px;
            color: white;
            text-decoration: none;
        }
        a.logo:hover {
            color: white;
            text-decoration: none;
            border-color:white;
        }
        .navbar {
            margin: 0;
            border-radius: 0;
            height: 80px;
            font-size: 20px;
            padding-top: 15px;
        }
        .navbar-form navbar-left{
            margin: 5px 0px;
        }
        .navbar-category {
            font-weight: bolder;
            padding: 15px;
        }
        <%--loginbar--%>
        #login_btn {
            width: 150px;
            height: 30px;
            border-radius: 0;
            font-size: 12px;
            background-color: white;
            vertical-align: middle;
            margin-right: 20px;
        }
        #login_btn:hover {
            color: white;
            background-color: #222222;
        }
        #login_btn p {
            margin: auto;
            padding: 5px 0px;
        }
        .loginbar-category {
            padding: 0px 8px;
        }
        .loginbar-category a {
            font-size: 12px;
            color: #222222;
            font-weight: bold;
        }
        .row.content {height: 800px}
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }
        /* On small screens, set height to 'auto' for sidenav and grid */
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }
            .row.content {height:auto;}
        }

        #scroll-btn {
            font-family: 'Nanum Gothic', sans-serif;
            opacity: 0;
            width: 65px;
            height: 65px;
            color: dimgray;
            background-color: white;
            position: fixed;
            bottom: 13%;
            right: 10%;
            border: 1px solid lightgrey;
            font: bold 15px monospace;
            transition: opacity 2s, transform 2s;
        }
        #scroll-btn.show {
            opacity: 1;
            transition: opacity 5s, transform 5s;
        }
        #scroll-btn2 {
            font-family: 'Nanum Gothic', sans-serif;
            opacity: 0;
            width: 65px;
            height: 65px;
            color: dimgray;
            background-color: white;
            position: fixed;
            bottom: 5%;
            right: 10%;
            border: 1px solid lightgrey;
            font: bold 15px monospace;
            transition: opacity 2s, transform 2s;
        }
        #scroll-btn2.show {
            opacity: 1;
            transition: opacity 5s, transform 5s;
        }
        #scroll-btn:hover {
            color: white;
            background-color: #222222;
        }

        #scroll-btn2:hover {
            color: white;
            background-color: #222222;
        }
    </style>
</head>
<body>
<%--navbar--%>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <div style="margin: 4px 0px;">
                <a class="logo" href="/">MOSINSA</a>
            </div>
        </div>
        <form class="navbar-form navbar-left" action="">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Ƽ���� �佺Ƽ�� �ִ� 80% ����" name="search" style="border-radius: 0; width:250px; font-size: 12px; height: 28px">
                <div class="input-group-btn">
                    <a href="#" class="btn btn-dark" style="background-color: #222222; padding: 3px; margin: auto; width: 28px; height: 28px; border-color: gray; border-radius: 0">
                        <span class="glyphicon glyphicon-search" style="color: lightgrey"></span>
                    </a>
                </div>
            </div>
        </form>
        <ul class="nav navbar-nav navbar-right" style="padding-right: 20px">
            <li><a href="#" class="navbar-category" style="color: #00D47B">����</a></li>
            <li><a href="#" class="navbar-category" style="color: #ED00EC">����</a></li>
            <li><a href="#" class="navbar-category" style="color: #FFFFFF">�Ź�</a></li>
            <li></li>
        </ul>
    </div>
</nav>
<div style="height:50px; padding:10px; border-bottom:1px solid lightgrey">
    <button type="button" id="login_btn" onclick="location.href='/login'"><p>�α���</p></button>
    <span class="loginbar-category" ><a href="#" style="color: #00A3FF; font-weight: bold">�ٷ����� ON</a></span>
    <span class="loginbar-category"><a href="/custinfo">����������</a></span>
    <span class="loginbar-category"><a href="/cart">��ٱ���</a></span>
    <span class="loginbar-category"><a href="#">������</a></span>
    <span class="loginbar-category"><a href="/register" style="color: #048EFF">ȸ�� ���� EVENT. �ű� ���� �� �ٷ� ��� ������ 15% ���� ���� / ��Ż� ���Ĵٵ� 990�� ���� ��ȸ</a></span>
</div>
<div class="container-fluid text-center">
    <div class="row content">
        <%--left menu center--%>
            <jsp:include page="left.jsp"/>

        <%--center--%>
        <c:choose>
            <c:when test="${center == null}">
                <jsp:include page="center.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="${center}.jsp"/>
            </c:otherwise>
        </c:choose>
            <%--center end--%>
    </div> <%--row content end--%>
</div><%--container end--%>
<footer class="container-fluid text-center">
    <p>Footer Text</p>
</footer>
</body>
</html>
<script>
    let chatbtn = {
        init:function(){
            const scrollBtn = document.createElement("button");
            scrollBtn.innerHTML = "ê��";
            scrollBtn.setAttribute("id", "scroll-btn");
            document.body.appendChild(scrollBtn);
            scrollBtn.classList.add("show");
            scrollBtn.addEventListener("click", function(){
                location.href='/login';
            });
            const scrollBtn2 = document.createElement("button");
            scrollBtn2.innerHTML = "1:1 ���";
            scrollBtn2.setAttribute("id", "scroll-btn2");
            document.body.appendChild(scrollBtn2);
            scrollBtn2.classList.add("show");
            scrollBtn2.addEventListener("click", function(){
                location.href='/login';
            });
        }
    };

    $(function(){
        chatbtn.init();
    });
</script>