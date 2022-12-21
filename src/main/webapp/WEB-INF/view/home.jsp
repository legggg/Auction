<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="icon" type="image/png" sizes="96x96" href="photo/topnew.png">



    <%@include file="header/header.jsp"%>
    <link href="css/nav.css" rel="stylesheet">
    <link href="css/sidebar.css" rel="stylesheet">
    <link href="css/font.css" rel="stylesheet">
</head>

<body>
<div class="left" style="position: absolute; left: 0px; width: 22%; height: 100%; bottom: -353.2px; background:whitesmoke;">
</div>
<div class="right" style="position: absolute; right: 0px; width: 22%; height: 100%; bottom: -353.2px; background: whitesmoke;">
</div>
<div id='navi'>
    <ul>
        <input type="checkbox" id="menuicon">
        <!--
        <label for="menuicon">
            <span></span>
            <span></span>
            <span></span>
        </label>
        -->
        <div class="sidebar"></div>
        <li class="active"><a href="#">지역별</a>
            <ul>
                <li><a href="/home2?num=0">서울</a>
                </li>
                <li><a href="/home2?num=1">대구</a>
                </li>
                <li><a href="/home2?num=2">경북</a>
                </li>
                <li><a href="#">부산</a>
                </li>
                <li><a href="#">경남</a>
                </li>
                <li><a href="#">광주</a>
                </li>
                <li><a href="#">대전</a>
                </li>
                <li><a href="#">울산</a>
                </li>
                <li><a href="#">세종</a>
                </li>
                <li><a href="#">경기</a>
                </li>
                <li><a href="#">강원</a>
                </li>
                <li><a href="#">충북</a>
                </li>
                <li><a href="#">충남</a>
                </li>
                <li><a href="#">전북</a>
                </li>
                <li><a href="#">전남</a>
                </li>
                <li><a href="#">제주</a>
                </li>



            </ul>
        </li>
        <li><a href="#">직무별</a>
            <ul>
                <li><a href="#">SubMenu1</a>
                </li>
                <li><a href="#">SubMenu2</a>
                </li>
            </ul>
        </li>
        <li><a href="#">나이별</a>
            <ul>
                <li><a href="#">SubMenu1</a>
                </li>
                <li><a href="#">SubMenu2</a>
                </li>
            </ul>
        </li>
        <li><a href="#">학력별</a>
            <ul>
                <li><a href="#">SubMenu1</a>
                </li>
                <li><a href="#">SubMenu2</a>
                </li>
            </ul>
        </li>
        <li><a href="#">전공별</a>
            <ul>
                <li><a href="#">SubMenu1</a>
                </li>
                <li><a href="#">SubMenu2</a>
                </li>
            </ul>
        </li>
    </ul>
</div>



<%--        <table>--%>
<%--                <tr>--%>
<%--                        <th>id</th>--%>
<%--                        <th>name</th>--%>

<%--                </tr>--%>
<%--                <c:forEach items="${adminList}" var="adminList">--%>
<%--                        <tr>--%>
<%--                                <td>${adminList.id}</td>--%>
<%--                                <td>${adminList.pw}</td>--%>

<%--                        </tr>--%>
<%--                </c:forEach>--%>
<%--        </table>--%>
<br>
<div align="center" style="position: relative;">
    <form action="/home" method="get">
        <style>
            select {
                width: 80px; /* 원하는 너비설정 */
                height: 30px;
                padding: 1px .1px; /* 여백으로 높이 설정 */
                font-family: inherit;  /* 폰트 상속 */
                background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; /* 네이티브 화살표 대체 */
                border: 1px solid #999;
                border-radius: 1px; /* iOS 둥근모서리 제거 */
                -webkit-appearance: none; /* 네이티브 외형 감추기 */
                -moz-appearance: none;
                appearance: none;
            }

            /* IE 10, 11의 네이티브 화살표 숨기기 */
            select::-ms-expand {
                display: none;
            }
        </style>
        <select name="searchType" style="left: 30%; height: auto">
            <option value="">선택</option>
            <option value="t">제목</option>
            <option value="n">글쓴이</option>
            <option value="j">희망직종</option>
        </select>

        <input name="searchKeyword" id="searchKeyword" type="text" placeholder="&nbsp;검색어를 입력하세요">

        <button style="border: 2px; padding: 4px">검색</button>
    </form>
</div>


<section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <!--개인로그인or비회원-->
            <c:if test="${state != 'company'}">
                <c:forEach items="${homeList}" var="l">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="../photo/사람.png" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">${l.title}</h5>
                                    <!-- Product price-->
                                        ${l.userVo.userName}
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/accessr">이력서보기</a></div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:if>
            <!--기업로그인-->
            <c:if test="${state == 'company'}">
                <c:forEach items="${homeList}" var="l">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="../photo/브이_넥타이.png" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">${l.title}</h5>
                                    <!-- Product price-->
                                        ${l.userVo.userName}
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href='tolist?num=${l.num}'>이력서보기</a></div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:if>

        </div>
    </div>
</section>

<%-- ...게시글 리스트 생략....--%>

<ul class="pagination d-flex justify-content-center" style="position:relative; top: -80px">

<%--    // 이전 페이지로 돌아가는 Prev 버튼--%>
    <c:choose>
        <c:when test="${boardsEntity.first}">
            <li class="page-item disabled"><a class="page-link"
                                              href="/home?page=${boardsEntity.number - 1}">Prev</a></li>
        </c:when>
        <c:otherwise>
            <li class="page-item"><a class="page-link"
                                     href="/home?page=${boardsEntity.number - 1}">Prev</a></li>
        </c:otherwise>
    </c:choose>

<%--    // 각 페이지로 이동할 수 있는 페이지 번호--%>
    <c:forEach begin="${startPage}" end="${endPage}" var="idx">
        <c:choose>
            <c:when test="${idx eq nowPage}">
                <li class="page-item disabled"><a
                        class="page-link page-active" href="/home?page=${idx-1}">${idx}</a></li>
            </c:when>
            <c:otherwise>
                <li class="page-item"><a class="page-link"
                                         href="/home?page=${idx-1}">${idx}</a></li>
            </c:otherwise>
        </c:choose>
    </c:forEach>

<%--    // 다음 페이지로 이동하는 Next 버튼--%>
    <c:choose>
        <c:when test="${boardsEntity.last}">
            <li class="page-item disabled"><a class="page-link"
                                              href="/home?page=${param.page + 1}">Next</a></li>
        </c:when>

        <c:otherwise>
            <li class="page-item"><a class="page-link"
                                     href="/home?page=${param.page + 1}">Next</a></li>
        </c:otherwise>
    </c:choose>

    <br>
    <br>
</ul>

</body>

<footer>
    <%@include file="header/footer.jsp"%>
</footer>
</html>