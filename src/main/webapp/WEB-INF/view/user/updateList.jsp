<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Modify Information</title>
</head>
<body>
<h2>회원 정보 수정</h2>
<form action="/updatelist" method="post">
    <p>
        제목<br>
        <input type="text" name="title" value="${list.title}" required/>
    </p>
    <p>
        내용<br>
        <input type="text" style="width:300px;height:200px;" name="content" value="${list.content}" required/>
    </p>
    <p>
        공개여부 :
        <input type="radio" name="open" value="N">비공개
        <input type="radio" name="open" value="Y">공개
    </p>
    <p>
        <input type="hidden" name="num" value="${list.num}" required/>
    </p>
    <button type="submit">저장하기</button>
</form>
</body>
</html>