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
<form action="/updatehis" method="post">

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
            <br>
            <h2 style="font-size:1.5em">경력 수정</h2>
            <div class="col-lg-5 align-items-center">
                <div class="card-body py-5 px-md-5">
                    <section>
                        <!-- Password input -->

                        <div class="form-outline mb-4">
                            <label class="form-label" for="comName">회사이름</label>
                            <input type="text" name="comName" value="${history.comName}" required id = "comName" class="form-control" placeholder="회사이름" />
                        </div>


                        <div class="form-outline mb-4">
                            <label class="form-label" for="comDepartment">근무부서</label>
                            <input type="text" name="comDepartment" value="${history.comDepartment}" id = "comDepartment" class="form-control" placeholder="근무부서" />
                        </div>


                        <div class="form-outline mb-4">
                            <label class="form-label" for="cexp">직위</label>
                            <input type="text"  name="cexp" value="${history.cexp}" id = "cexp" class="form-control" placeholder="직위" />
                        </div>


                        <div class="form-outline mb-4">
                            <label class="form-label" for="startDate">입사일</label>
                            <input type="date" name="startDate" value="${history.startDate}" required id = "startDate" class="form-control" placeholder="입사일" />
                        </div>

                        <div class="form-outline mb-4">
                            <label class="form-label" for="endDate">퇴사일</label>
                            <input type="date" name="endDate" value="${history.endDate}" required id = "endDate" class="form-control" placeholder="퇴사일" />
                        </div>
                        <div class="form-outline mb-4">
                            <input type="hidden" name="historyNum" value="${history.historyNum}" required/>
                        </div>


                        <button type="submit" class="btn btn-primary btn-block mb-4">저장하기</button>
                    </section>
                </div>
            </div>
        </div>
    </section>

</form>

</body>
<footer>
    <%@include file="../header/footer.jsp"%>
</footer>
</html>