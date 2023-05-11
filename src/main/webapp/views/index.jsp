<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="/js/index0421.js"></script>

    <%--카카오맵--%>
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
        .navbar {
            margin-bottom: 0;
            border-radius: 0;
            height: 80px;
            font-size: 20px;
            padding-top: 20px;
        }

        .row.content {height: 800px}

        .sidenav {
            padding-top: 20px;
            /*background-color: #f1f1f1;*/
            height: 100%;
        }

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
    </style>
</head>
<body>

<%--navbar--%>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a style="font-size: 30px; color: white" href="#">MOSINSA</a>
        </div>

        <form class="navbar-form navbar-left" action="">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="티셔츠 페스티벌 최대 80% 할인" name="search" style="font-size: 12px; width: 250px">
                <div class="input-group-btn">
                    <button class="btn btn-default" type="submit">
                        <i class="glyphicon glyphicon-search"></i>
                    </button>
                </div>
            </div>
        </form>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="#" style="color: #00d47B">상의</a></li>
            <li><a href="#" style="color: #ED00EC">하의</a></li>
            <li><a href="#">신발</a></li>
            <li></li>
        </ul>
    </div>
</nav>
<nav style="height: 50px;padding-top:10px; padding-left:10px">
    <div style="width:150px; border-style:solid; border-color:black; text-align: center">
        <a href="#" role="button">로그인</a>
    </div>
<%--    <ul class="nav navbar-nav navbar-left">--%>
<%--        <li><a href="#">바로접속 ON</a></li>--%>
<%--        <li><a href="#">마이페이지</a></li>--%>
<%--        <li><a href="#">장바구니</a></li>--%>
<%--        <!--<li><a href="#">고객센터</a></li>-->--%>
<%--        <li>고객센터</li>--%>
<%--    </ul>--%>

</nav>


<div class="container-fluid text-center">
    <div class="row content">

        <%--left menu center--%>
        <c:choose>
            <c:when test="${left == null}">
                <jsp:include page="left.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="${left}.jsp"/>
            </c:otherwise>
        </c:choose> <%--left menu end--%>

        <%--center--%>
        <c:choose>
            <c:when test="${center == null}">
                <jsp:include page="center.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="${center}.jsp"/>
            </c:otherwise>
        </c:choose> <%--center end--%>

    </div> <%--row content end--%>
</div><%--container end--%>

<footer class="container-fluid text-center">
    <p>Footer Text</p>
</footer>

</body>
</html>
