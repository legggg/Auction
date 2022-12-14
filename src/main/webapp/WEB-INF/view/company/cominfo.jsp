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
</head>
<body>
<table style="width: 25%">
    <div class="table-title">
        <br>
        <Br>
        <h3 style="text-align: center">개인정보</h3>
    </div>
    <div class="info">
        <tr><td class="text-center">이름</td><td class="text-center">${hrInfo.hrName}</td></tr>
        <tr><td class="text-center">이메일</td><td class="text-center">${hrInfo.hrEmail}</td></tr>
        <tr><td class="text-center">전화번호</td><td class="text-center">${hrInfo.hrPhNum}</td></tr>
        <tr><td class="text-center">사업자번호</td><td class="text-center">${hrInfo.comNum}</td></tr>
    </div>
</table>
<br>
<button class="btn"  style="margin:auto;display: block;" type="button" onclick="location.href='updatehr'">개인정보 수정</button>
<br>
<div class="table-title">
    <h3 style="text-align: center">경매내역</h3>
</div>
<table class="table-fill">
    <thead>
    <tr>
        <th class="text-center">제목</th>
        <th class="text-center">금액</th>
        <th class="text-center">날짜</th>
        <th class="text-center">비고</th>
    </tr>
    </thead>
    <tbody class="table-hover">
    <c:forEach items="${auctinoList}" var="a">
    <tr>
        <td class="text-center"><a href='tolist?num=${a.num}'>${a.listVo.title}</a></td>
        <td class="text-center">${a.amount}</td>
        <td class="text-center"><fmt:formatDate value="${a.date}" pattern="yyyy-MM-dd KK:mm:ss"/></td>
        <td class="text-center">${a.comContent}</td>
    </tr>
    </c:forEach>
</table>

</body>
</html>