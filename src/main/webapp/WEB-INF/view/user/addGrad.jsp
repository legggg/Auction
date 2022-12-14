<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String id=(String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>add graduation</title>
</head>
<body>
<h2>학력 추가</h2>
<form action="/addgrad" method="post">
    <div>
        <input type="hidden" name="userId" value="<%=id%>"/>
    </div>
    <div>
        <input type="text" name="gradName" placeholder="학교 이름"/>
    </div>
    <div>
        <input type="text" name="gradType" placeholder="전공"/>
    </div>
    <div>
        <input type="date" name="gradDate" placeholder="졸업일"/>
    </div>
    <button type="submit">추가</button>
</form>
</body>
</html>