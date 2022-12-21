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

</head>
<body>

<div style="weight:100%;">
    <div style="float:left;width: 15%; margin-left: 20%">
        <table style="width: 80%">
            <br>
            <div>
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

    <div style="float: left; margin-left: 2%; width: 26%">
        <br>
        <div>
            <h3 style="text-align: center">이력서</h3>
        </div>
        <table style="width: 100%">
            <tr><td style="width: 25%;">제목</td><td style="text-align: left"> ${list.title}</td></tr>
            <tr><td style="width: 25%;">희망직종</td><td style="text-align: left"> ${list.job}</td></tr>
            <tr><td style="width: 25%;">내용</td><td style="text-align: left"> ${list.content}</td></tr>
        </table>
        <br>

        <div>
            <h3 style="text-align: center">학력</h3>
        </div>
        <table style="width: 100%">
            <thead>
            <tr>
                <th>이름</th>
                <th>날짜</th>
                <th>전공</th>
            </tr>
            </thead>
            <tbody>
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
        <table style="width: 100%">
            <thead>
            <tr>
                <th>기업명</th>
                <th>근무부서</th>
                <th>직위</th>
                <th>입사일</th>
                <th>퇴사일</th>
            </tr>
            </thead>
            <tbody>
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
    </div>

    <div style="float:right; width: 15%; margin-right: 20%">
        <br>
        <div>
            <h3 style="text-align: center">경매</h3>
        </div>
        <table style="width: 100%">
            <thead>
            <tr>
                <th>금액</th>
                <th>날짜</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${auctinoListByUser}" var="a">
            <tr>
                <td>연봉 ${a.amount}만원</td>
                <td><fmt:formatDate value="${a.date}" pattern="yyyy-MM-dd"/></td>
            </tr>
            </c:forEach>
        </table>
        <br>
        <form action="/tolist" method="post">
            <a>
                연봉
                <select name="amount" style="border:2px solid gray;
                  padding:5px 10px;">
                    <option value="2000">2,000</option>
                    <option value="2100">2,100</option>
                    <option value="2200">2,200</option>
                    <option value="2300">2,300</option>
                    <option value="2400">2,400</option>
                    <option value="2500">2,500</option>
                    <option value="2600">2,600</option>
                    <option value="2700">2,700</option>
                    <option value="2800">2,800</option>
                    <option value="2900">2,900</option>
                    <option value="3000">3,000</option>
                    <option value="3100">3,100</option>
                    <option value="3200">3,200</option>
                    <option value="3300">3,300</option>
                    <option value="3400">3,400</option>
                    <option value="3500">3,500</option>
                    <option value="3600">3,600</option>
                    <option value="3700">3,700</option>
                    <option value="3800">3,800</option>
                    <option value="3900">3,900</option>
                    <option value="4000">4,000</option>
                    <option value="4100">4,100</option>
                    <option value="4200">4,200</option>
                    <option value="4300">4,300</option>
                    <option value="4400">4,400</option>
                    <option value="4500">4,500</option>
                    <option value="4600">4,600</option>
                    <option value="4700">4,700</option>
                    <option value="4800">4,800</option>
                    <option value="4900">4,900</option>
                    <option value="5000">5,000</option>
                    <option value="5100">5,100</option>
                    <option value="5200">5,200</option>
                    <option value="5300">5,300</option>
                    <option value="5400">5,400</option>
                    <option value="5500">5,500</option>
                    <option value="5600">5,600</option>
                    <option value="5700">5,700</option>
                    <option value="5800">5,800</option>
                    <option value="5900">5,900</option>
                    <option value="6000">6,000</option>

                </select>
                <!--<input type="text" name="amount" placeholder="5000"required/>-->
                만원
            </a>
            <fieldset>
                <br>
                비고
                <input type="text" placeholder="기숙사제공" class="field" style="border:2px solid gray;
                  height: 30px;
                  padding:5px 10px;"/>
            </fieldset>
            <p>
                <input type="hidden" name="num" value="${list.num}" required/>
            </p>
            <p>
                <input type="hidden" name="hrId" value="${hr.hrId}" required/>
            </p>
            <p>
                <input type="hidden" name="date" id="now_date"/>
            </p>
            <script>
                document.getElementById('now_date').value = new Date();
            </script>

            <br>
            <button class="btn" style="margin:auto;display: block;" type="submit">경매 참가</button></br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
        </form>
    </div>
</div>
</body>
<footer>
    <%@include file="../header/footer.jsp"%>
</footer>
</html>
