<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="icon" type="image/png" sizes="96x96" href="photo/topnew.png">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>add grad</title>
    <%@include file="../header/header.jsp"%>
</head>
<body>
<form action="/addgrad" method="post">



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
            <a style="font-size:xx-large">학력 추가</a>
            <div class="col-lg-5 align-items-center">
                <div class="card-body py-5 px-md-5">
                    <section>

                        <div>
                            <input type="hidden" name="userId" value="<%=id%>"/>
                        </div>

                        <div class="form-outline mb-4">
                            <label class="form-label" for="gradName">학교명</label>
                            <input type="text" name="gradName" id = "gradName" class="form-control" placeholder="학교"명" />
                        </div>


                        <div class="form-outline mb-4">
                            <label class="form-label" for="gradType">전공</label>
                            <input type="text" name="gradType" id = "gradType" class="form-control" placeholder="전공" />
                        </div>


                        <div class="form-outline mb-4">
                            <label class="form-label" for="gradDate">졸업일</label>
                            <input type="date"  name="gradDate"  id = "gradDate" class="form-control" placeholder="졸업일" />
                        </div>


                        <button type="submit" class="btn btn-primary btn-block mb-4">추가</button>
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