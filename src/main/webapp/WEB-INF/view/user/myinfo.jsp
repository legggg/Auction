<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="button" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="icon" type="image/png" sizes="96x96" href="photo/topnew.png">
    <%@include file="../header/header.jsp"%>
    <link href="css/table.css" rel="stylesheet">
    <link href="css/button.css" rel="stylesheet">
    <link href="css/nav.css" rel="stylesheet">
    <link href="css/sidebar.css" rel="stylesheet">
    <link href="css/font.css" rel="stylesheet">
</head>
<body>
<%--    <h3 style="text-align: center;">--%>
<%--        <input type="checkbox" id="menuicon">--%>

<%--        <label for="menuicon">--%>
<%--            <span></span>--%>
<%--            <span></span>--%>
<%--            <span></span>--%>
<%--        </label>--%>

<%--        <div class="sidebar"></div>--%>
<%--        </h3>--%>


<div class="left-info" style="position: relative; width: 50%; height: 800px;float: left; left: 8%">
    <table class="table-fill-2" style="width: 25%;">
        <div class="table-title">
            <br>
            <h3 style="text-align: center">개인정보</h3>
        </div>
        <input type="file" class="real-upload" accept="image/*" required multiple style="display: none;">
        <div class="upload" style="width: 300px; height: 300px; border: 1px solid black;margin: auto; display: block; ">   </div>
        <script>
            const realUpload = document.querySelector('.real-upload');
            const upload = document.querySelector('.upload');

            upload.addEventListener('click', () => realUpload.click());
        </script>
        <br>
        <br>
        <div class="info">
            <tr><td>이름</td><td>${userInfo.userName}</td></tr>
            <tr><td>성별</td><td>${userInfo.userGender}</td></tr>
            <tr><td>이메일</td><td>${userInfo.userEmail}</td></tr>
            <tr><td>전화번호</td><td>${userInfo.userPhNum}</td></tr>
            <tr><td>생년월일</td><td>${userInfo.userBirth}</td></tr>
            <tr><td>주소</td><td>${userInfo.userAddress}</td></tr>
        </div>
    </table>
    <br>
    <br>
    <!--경매내역-->

</div>

<div class="right-info" style="position: relative; width: 50%; height: 800px;float: right; right: 17%">


    <div class="table-title">
        <br>
        <h3 style="text-align: center">학력</h3>
    </div>
    <table class="table-fill" style="width: 60%;">
        <thead>
        <tr>
            <th>이름</th>
            <th>졸업일</th>
            <th>전공</th>

        </tr>
        </thead>
        <tbody class="table-hover">
        <c:forEach items="${glist}" var="g">
        <tr>
            <td>${g.gradName}</td>
            <td>${g.gradDate}</td>
            <td>${g.gradType}</td>

        </tr>
        </c:forEach>
    </table>
    <br>
    <div class="table-title">
        <h3 style="text-align: center">경력</h3>
    </div>
    <table class="table-fill" style="width: 60%;">
        <thead>
        <tr>
            <th>기업명</th>
            <th>근무부서</th>
            <th>직위</th>
            <th>입사일</th>
            <th>퇴사일</th>
        </tr>
        </thead>
        <tbody class="table-hover">
        <c:forEach items="${hlist}" var="h">
        <tr>
            <td>${h.comName}</td>
            <td>${h.comDepartment}</td>
            <td>${h.cexp}</td>
            <td><fmt:formatDate value="${h.startDate}" pattern="yyyy-MM-dd"/></td>
            <td><fmt:formatDate value="${h.endDate}" pattern="yyyy-MM-dd"/></td>
        </tr>
        </c:forEach>
    </table>
    <br>
</div>

<button style="margin:0 auto;" class="btn btn-outline-dark mt-auto" onclick="location.href='/myinfo2'">수정</button>

</body>
<footer>
    <%@include file="../header/footer.jsp"%>
</footer>
</html>