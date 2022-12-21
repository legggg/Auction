<%@ page import="java.time.LocalDate" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.example.j.vo.listVO" %>
<%@ page import="java.time.ZoneId" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="button" uri="http://www.springframework.org/tags/form" %>
<%
    LocalDate localDate = LocalDate.now();

    listVO listVo =(listVO)request.getAttribute("list");
    Date date = listVo.getEndDate();
    LocalDate endDate = date.toInstant()   // Date -> Instan
            .atZone(ZoneId.systemDefault())  // Instant -> ZonedDateTime
            .toLocalDate();

    boolean date_now;
    int result=localDate.compareTo(endDate);
    if(result>0){
        date_now=true;
    }else{
        date_now=false;
    }

%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="icon" type="image/png" sizes="96x96" href="photo/topnew.png">
    <%@include file="../header/header.jsp"%>
    <link href="css/table.css" rel="stylesheet">
    <link href="css/button.css" rel="stylesheet">
</head>
<body>

<div class="left-info" style="position: absolute; width: 70%; height: 800px;float: left; right: 30%">
    <table class="table-fill-2" style="width: 25%;">
        <div>
            <br>
            <h3 style="text-align: center">개인정보</h3>
        </div>

        <input type="file" class="real-upload" accept="image/*" required multiple style="display: none;">
        <div class="upload" style="width: 300px; height: 300px; border: 1px solid black;margin: auto; display: block; ">   </div>
        <!--
        <script>
            const realUpload = document.querySelector('.real-upload');
            const upload = document.querySelector('.upload');

            upload.addEventListener('click', () => realUpload.click());
        </script>
        -->
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
</div>



<div class="right-info" style="position: absolute; width: 60%; height: 800px;float: right; left: 30%">
    <br>
    <div>
        <h3 style="text-align: center">이력서</h3>
    </div>
    <table>
        <tr><td style="width: 30%">제목</td><td>${list.title}</td></tr>
        <tr><td style="width: 30%">희망직종</td><td>${list.job}</td></tr>
        <tr><td style="width: 30%"> 내용</td><td>${list.content}</td></tr>
    </table>
    <br>

    <div>
        <h3 style="text-align: center">학력</h3>
    </div>
    <table>
        <thead>
        <tr>
            <th>이름</th>
            <th>날짜</th>
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

    <div>
        <h3 style="text-align: center">경력</h3>
    </div>
    <table>
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
    <br><br>
</div>
<br><br>
<br><br>
<br><br>
<c:set var="date" value="<%=date_now%>"></c:set>
<c:if test="${date eq true}">
<div>
    <style>
        .cha{
            position: relative;
            top: 800px;
        }
    </style>
    <br>
    <br>
    <h3 class="cha" style="position: relative; text-align: center; top: 800px;">경매</h3>
    <table class="cha">
        <thead>
        <tr>
            <th>금액</th>
            <th>날짜</th>
            <th>비고</th>
            <th>기업</th>
            <th>담당자 이름</th>
            <th>담당자 전화번호</th>
            <th>담당자 이메일</th>
        </tr>
        </thead>
        <tbody class="table-hover">
        <c:forEach items="${auctinoListByUser}" var="a" begin ="0" end="2" step="1">
        <tr>
            <td>연봉 ${a.amount}만원</td>
            <td><fmt:formatDate value="${a.date}" pattern="yyyy-MM-dd"/></td>
            <td>${a.comContent}</td>
            <td>${a.companyVo.comName}</td>
            <td>${a.hrVo.hrName}</td>
            <td>${a.hrVo.hrPhNum}</td>
            <td>${a.hrVo.hrEmail}</td>
        </tr>
        </c:forEach>
    </table>
    <br>
    <br>
    </c:if>
</div>
<br><br>
<br><br>
<br><br><br><br>
<br><br>
<br><br><br><br>
<br><br>
<br><br><br><br>
<br><br>
<br><br><br><br>
<br><br>
<br><br>
</body>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br><br><br>

<footer>
    <%@include file="../header/footer.jsp"%>
</footer>
</html>