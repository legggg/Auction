<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="icon" type="image/png" sizes="96x96" href="photo/topnew.png">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Modify Information</title>
    <%@include file="../header/header.jsp"%>
</head>
<body>
<h2 회원 정보 수정 ></h2>
<form action="/auction" method="post">


    <section class=" text-center text-lg-start">
        <style>
            .rounded-t-5 {
                border-top-left-radius: 0.5rem;
                border-top-right-radius: 0.5rem;
            }

            @media (min-width: 992px) {
                .rounded-tr-lg-0 {
                    border-top-right-radius: 0;
                }

                .rounded-bl-lg-5 {
                    border-bottom-left-radius: 0.5rem;
                }
            }
        </style>


        <div class="card mb-3 align-items-center">
            <div class="col-lg-5 align-items-center">
                <div class="card-body py-5 px-md-5">
                    <section>
                        <!-- Password input -->
                        <div class="form-outline mb-4">
                            <label class="form-label" for="userPw">가격</label>
                            <input type="password" id= "userPw" name="userPw" value="${user.userPw}" required class="form-control" placeholder="password" />
                        </div>


                        <div class="form-outline mb-4">
                            <label class="form-label" for="userName">이름</label>
                            <input type="text" name="userName" value="${user.userName}" required id = "userName" class="form-control" placeholder="이름" />
                        </div>


                        <div class="form-outline mb-4">
                            <label class="form-label" for="userEmail">Email</label>
                            <input type="email" name="userEmail" value="${user.userEmail}" required id = "userEmail" class="form-control" placeholder="Email" />
                        </div>


                        <div class="form-outline mb-4">
                            <label class="form-label" for="userPhNum">핸드폰 번호</label>
                            <input type="text" name="userPhNum" value="${user.userPhNum}" required id = "userPhNum" class="form-control" placeholder="핸드폰 번호" />
                        </div>


                        <div class="form-outline mb-4">
                            <label class="form-label" for="userBirth">생일</label>
                            <input type="date" name="userBirth" value="${user.userBirth}" required id = "userBirth" class="form-control" placeholder="생일" />
                        </div>

                        <div class="form-outline mb-4">
                            <label class="form-label" for="userGender">성별</label>
                            <input type="text" name="userGender" value="${user.userGender}" required id = "userGender" class="form-control" placeholder="성별" />
                        </div>
                        <div class="form-outline mb-4">
                            <label class="form-label" for="userAddress">주소</label>
                            <input type="text" name="userAddress" value="${user.userAddress}" id = "userAddress" class="form-control" placeholder="주소" />
                        </div>

                        <div class="form-outline mb-4">
                            <label class="form-label" for="userPurpose">목적</label>
                            <input type="text" name="userPurpose" value="${user.userPurpose}" required id = "userPurpose" class="form-control" placeholder="목적" />
                        </div>


                        <button type="submit" class="btn btn-primary btn-block mb-4">수정완료</button>
                    </section>
                </div>
            </div>
        </div>
    </section>

</form>

</body>

</html>