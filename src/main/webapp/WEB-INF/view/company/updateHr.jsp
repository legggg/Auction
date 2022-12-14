<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Modify Information</title>
    <%@include file="../header/header.jsp"%>
</head>
<body>
<h2 회원 정보 수정 ></h2>
<form action="/updatehr" method="post">


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
                            <label class="form-label" for="hrPw">비밀번호</label>
                            <input type="password" id= "hrPw" name="hrPw" value="${hr.hrPw}" required class="form-control" placeholder="password" />
                        </div>


                        <div class="form-outline mb-4">
                            <label class="form-label" for="hrName">이름</label>
                            <input type="text" name="hrName" value="${hr.hrName}" required id = "hrName" class="form-control" placeholder="이름" />
                        </div>


                        <div class="form-outline mb-4">
                            <label class="form-label" for="hrEmail">Email</label>
                            <input type="email" name="hrEmail" value="${hr.hrEmail}" required id = "hrEmail" class="form-control" placeholder="Email" />
                        </div>


                        <div class="form-outline mb-4">
                            <label class="form-label" for="hrPhNum">핸드폰 번호</label>
                            <input type="text" name="hrPhNum" value="${hr.hrPhNum}" required id = "hrPhNum" class="form-control" placeholder="핸드폰 번호" />
                        </div>

                        <div class="form-outline mb-4">
                            <label class="form-label" for="hrId"></label>
                            <input type="hidden" name="hrId" value="${hr.hrId}" required id = "hrId" class="form-control" placeholder="목적" />
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