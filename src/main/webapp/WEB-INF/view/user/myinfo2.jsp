<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="button" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@include file="../header/header.jsp"%>
    <link href="css/table.css" rel="stylesheet">
    <link href="css/button.css" rel="stylesheet">
    <link href="css/nav.css" rel="stylesheet">
</head>

<div class="left-info" style="position: relative; float:left; width: 30%; left: 20%">
    <table class="table-fill-2" style="width: 50%">
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
        <button class="btn" type="submit" style="margin:auto;display: block;" >저장하기</button>
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
    <button class="btn"  style="margin:auto;display: block;" type="button" onclick="location.href='update'">개인정보 수정</button>
    <br>
    <br>

    <!--경매내역-->
</div>
<div class="right-info" style="position: relative; width: 60%; height: auto; float: right; right:12%" >
    <div class="table-title">
        <br>
        <h3 style="text-align: center">학력</h3>
    </div>
    <table class="table-fill">
        <thead>
        <tr>
            <th>이름</th>
            <th>졸업일</th>
            <th>전공</th>
            <th>수정</th>
            <th>삭제</th>
        </tr>
        </thead>
        <tbody class="table-hover">
        <c:forEach items="${glist}" var="g">
        <tr>
            <td>${g.gradName}</td>
            <td>${g.gradDate}</td>
            <td>${g.gradType}</td>
            <td><button class="btn" type="button" onclick="location.href='updategrad?num=${g.num}'">수정</button></td>
            <td><button class="btn" type="button" onclick="location.href='deletegrad?num=${g.num}'">삭제</button></td>
        </tr>
        </c:forEach>
    </table>
    <br>
    <button class="btn" style="margin:auto;display: block;" type="button" onclick="location.href='addgrad'">학력 추가</button></br>
    <br>
    <div class="table-title">
        <h3 style="text-align: center">경력</h3>
    </div>
    <table class="table-fill">
        <thead>
        <tr>
            <th>기업명</th>
            <th>근무부서</th>
            <th>직위</th>
            <th>입사일</th>
            <th>퇴사일</th>
            <th>수정</th>
            <th>삭제</th>
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
            <td><button class="btn" type="button" onclick="location.href='updatehis?num=${h.historyNum}'">수정</button></td>
            <td><button class="btn" type="button" onclick="location.href='deletehis?num=${h.historyNum}'">삭제</button></td>
        </tr>
        </c:forEach>
    </table>
    <br>
    <button class="btn" style="margin:auto;display: block;" type="button" onclick="location.href='addhis'">경력 추가</button>
    <br>
</div>
</body>
<footer>
    <%@include file="../header/footer.jsp"%>
</footer>
</html>