<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="button" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@include file="header/header.jsp"%>
    <link rel="icon" type="image/png" sizes="96x96" href="photo/topnew.png">
    <link href="css/table2.css" rel="stylesheet">
    <link href="css/button.css" rel="stylesheet">
    <link href="css/nav.css" rel="stylesheet">
</head>
<body>

<div class="lift-info" style="position: absolute; right:60%;">
    <table class="table-fill-2">
        <div class="table-title">
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
        <button class="custom-btn-1 btn-1" type="submit" style="margin:auto;display: block;" >저장하기</button>
        <br>
        <div class="info">
            <tr><td class="text-center">이름</td><td class="text-center">${userInfo.userName}</td></tr>
            <tr><td class="text-center">성별</td><td class="text-center">${userInfo.userGender}</td></tr>
            <tr><td class="text-center">이메일</td><td class="text-center">${userInfo.userEmail}</td></tr>
            <tr><td class="text-center">전화번호</td><td class="text-center">${userInfo.userPhNum}</td></tr>
            <tr><td class="text-center">생년월일</td><td class="text-center">${userInfo.userBirth}</td></tr>
            <tr><td class="text-center">주소</td><td class="text-center">${userInfo.userAddress}</td></tr>
        </div>
    </table>
    <br>
    <button class="custom-btn-1 btn-1"  style="margin:auto;display: block;" type="button" onclick="location.href='update'">개인정보 수정</button>
    <br>
    <!--경매내역-->

</div>

<div class="right-info" style="position: absolute; left:43%">


    <div class="table-title">
        <h3 style="text-align: center">학력</h3>
    </div>
    <table class="table-fill">
        <thead>
        <tr>
            <th class="text-center">이름</th>
            <th class="text-center">졸업일</th>
            <th class="text-center">전공</th>
            <th class="text-center">수정</th>
            <th class="text-center">삭제</th>
        </tr>
        </thead>
        <tbody class="table-hover">
        <c:forEach items="${glist}" var="g">
        <tr>
            <td class="text-center">${g.gradName}</td>
            <td class="text-center">${g.gradDate}</td>
            <td class="text-center">${g.gradType}</td>
            <td class="text-center"><button class="custom-btn-2 btn-1" type="button" onclick="location.href='updategrad?num=${g.num}'">수정</button></td>
            <td class="text-center"><button class="custom-btn-2 btn-1" type="button" onclick="location.href='deletegrad?num=${g.num}'">삭제</button></td>
        </tr>
        </c:forEach>
    </table>
    <br>
    <button class="custom-btn-1 btn-1" style="margin:auto;display: block;" type="button" onclick="location.href='addgrad'">학력 추가</button></br>
    <div class="table-title">
        <h3 style="text-align: center">경력</h3>
    </div>
    <table class="table-fill">
        <thead>
        <tr>
            <th class="text-center">기업명</th>
            <th class="text-center">근무부서</th>
            <th class="text-center">직위</th>
            <th class="text-center">입사일</th>
            <th class="text-center">퇴사일</th>
            <th class="text-center">수정</th>
            <th class="text-center">삭제</th>
        </tr>
        </thead>
        <tbody class="table-hover">
        <c:forEach items="${hlist}" var="h">
        <tr>
            <td class="text-center">${h.comName}</td>
            <td class="text-center">${h.comDepartment}</td>
            <td class="text-center">${h.cexp}</td>
            <td class="text-center"><fmt:formatDate value="${h.startDate}" pattern="yyyy-MM-dd"/></td>
            <td class="text-center"><fmt:formatDate value="${h.endDate}" pattern="yyyy-MM-dd"/></td>
            <td class="text-center"><button class="custom-btn-2 btn-1" type="button" onclick="location.href='updatehis?num=${h.historyNum}'">수정</button></td>
            <td class="text-center"><button class="custom-btn-2 btn-1" type="button" onclick="location.href='deletehis?num=${h.historyNum}'">삭제</button></td>
        </tr>
        </c:forEach>
    </table>
    <br>
    <button class="custom-btn-1 btn-1" style="margin:auto;display: block;" type="button" onclick="location.href='addhis'">경력 추가</button>

</div>

</body>
</html>