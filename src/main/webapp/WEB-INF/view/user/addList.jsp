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
<h2>이력서 추가</h2>
<form action="/addlist" method="post">

    <div>
        <input type="text" name="title" placeholder="제목" required/>
    </div>
    <div>
        <input type="text" name="content" placeholder="내용" required/>
    </div>
    <div>
        공개여부 :
        <input type="radio" name="open" value="N" checked='private'>비공개
        <input type="radio" name="open" value="Y">공개
    </div>
    <div>
        <input type="hidden" name="userId" value="<%=id%>"/>
    </div>

    <button type="submit">추가</button>
</form>
</body>
</html>