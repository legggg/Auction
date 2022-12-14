<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Modify Information</title>
</head>
<body>
<h2 style="font-size:1.5em">회원 정보 수정</h2>
<form action="/updategrad" method="post">
    <p>
        학교이름<br>
        <input type="text" name="gradName" value="${graduation.gradName}" required/>
    </p>
    <p>
        졸업일<br>
        <input type="date" name="gradDate" value="${graduation.gradDate}" required/>
    </p>
    <p>
        전공<br>
        <input type="text" name="gradType" value="${graduation.gradType}"/>
    </p>
    <p>
        <input type="hidden" name="num" value="${graduation.num}" required/>
    </p>


    <button type="submit">저장하기</button>
</form>
</body>
</html>