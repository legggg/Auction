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
</head>
<body>
<br>
<div>
    <h3 style="text-align: center">이력서</h3>
</div>
<table style="width:45%">
    <thead>
    <tr>
        <th style="width: 55%">제목</th>
        <th>희망직종</th>
        <th>마감날짜</th>
        <th>수정</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listA}" var="la">
    <tr>
        <td><a onclick="location.href='preview?num=${la.num}'">${la.title}</a></td>
        <td>${la.job}</td>
        <td><fmt:formatDate value="${la.endDate}" pattern="yyyy-MM-dd"/></td>
        <td><button class="btn btn-outline-dark mt-auto" onclick="location.href='updatelist?num=${la.num}'">수정</button></td>
    </tr>
    </c:forEach>

</table>
<br>
<button style="margin:0 auto;" class="btn btn-outline-dark mt-auto" onclick="location.href='addlist'">이력서 추가</button>
<br>
<div>
    <h3 style="text-align: center">이전 이력서</h3>
</div>
<table style="width:45%">
    <thead>
    <tr>
        <th style="width: 55%">제목</th>
        <th>희망직종</th>
        <th>마감날짜</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listB}" var="lb">
    <tr>
        <td><a onclick="location.href='preview?num=${lb.num}'">${lb.title}</a></td>
        <td>${lb.job}</td>
        <td><fmt:formatDate value="${lb.endDate}" pattern="yyyy-MM-dd"/></td>
    </tr>
    </c:forEach>
</table>
</body>
<footer>
    <%@include file="../header/footer.jsp"%>
</footer>
</html>