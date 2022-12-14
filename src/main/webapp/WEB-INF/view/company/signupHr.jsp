<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sign Up</title>

</head>
<body>
<h2>회원가입</h2>

<form action="/signuphr" method="post">
    <div>
        <input type="text" name="hrId" placeholder="아이디" required/>
    </div>
    <div>
        <input type="password" name="hrPw" placeholder="비밀번호"required/>
    </div>
    <div>
        <input type="text" name="hrName" placeholder="이름" required/>
    </div>
    <div>
        <input type="email" name="hrEmail" placeholder="이메일" required/>
    </div>
    <div>
        <input type="text" name="hrPhNum" placeholder="전화번호" required/>
    </div>
    <div>
        <input type="text" name="comNum" placeholder="사업자번호" required/>
    </div>

    <button type="submit">회원가입</button>
</form>
</body>
</html>