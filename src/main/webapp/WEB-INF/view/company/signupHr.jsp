<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="icon" type="image/png" sizes="96x96" href="photo/topnew.png">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sign Up</title>
    <%@include file="../header/header.jsp"%>

</head>
<body>

<form action="/signuphr" method="post">



    <section class="background-radial-gradient overflow-hidden">
        <style>
            .background-radial-gradient {
                background-color: hsl(218, 41%, 15%);
                background-image: radial-gradient(650px circle at 0% 0%,
                hsl(218, 41%, 35%) 15%,
                hsl(218, 41%, 30%) 35%,
                hsl(218, 41%, 20%) 75%,
                hsl(218, 41%, 19%) 80%,
                transparent 100%),
                radial-gradient(1250px circle at 100% 100%,
                        hsl(218, 41%, 45%) 15%,
                        hsl(218, 41%, 30%) 35%,
                        hsl(218, 41%, 20%) 75%,
                        hsl(218, 41%, 19%) 80%,
                        transparent 100%);
            }

            #radius-shape-1 {
                height: 220px;
                width: 220px;
                top: -60px;
                left: -130px;
                background: radial-gradient(#44006b, #ad1fff);
                overflow: hidden;
            }

            #radius-shape-2 {
                border-radius: 38% 62% 63% 37% / 70% 33% 67% 30%;
                bottom: -60px;
                right: -110px;
                width: 300px;
                height: 300px;
                background: radial-gradient(#44006b, #ad1fff);
                overflow: hidden;
            }

            .bg-glass {
                background-color: hsla(0, 0%, 100%, 0.9) !important;
                backdrop-filter: saturate(200%) blur(25px);
            }
        </style>

        <div class="card mb-3 align-items-center">
            <br>
            <h2 style="font-size:1.5em">?????? ??????</h2>
            <div class="col-lg-5 align-items-center">
                <div class="card-body py-5 px-md-5">
                    <section>
                        <!-- Password input -->

                        <div class="form-outline mb-4">
                            <label class="form-label" for="hrId">?????????</label>
                            <input type="text"   id = "hrId" name="hrId" required class="form-control" placeholder="?????????" />
                        </div>

                        <div class="form-outline mb-4">
                            <label class="form-label" for="hrPw">????????????</label>
                            <input type="password"   id = "hrPw" name="hrPw" required class="form-control" placeholder="????????????" />
                        </div>

                        <div class="form-outline mb-4">
                            <label class="form-label" for="hrName">??????</label>
                            <input type="text"   id = "hrName" name="hrName" required class="form-control" placeholder="??????" />
                        </div>

                        <div class="form-outline mb-4">
                            <label class="form-label" for="hrEmail">?????????</label>
                            <input type="email"   id = "hrEmail" name="hrEmail" required class="form-control" placeholder="?????????" />
                        </div>

                        <div class="form-outline mb-4">
                            <label class="form-label" for="hrPhNum">????????????</label>
                            <input type="text"   id = "hrPhNum" name="hrPhNum" required class="form-control" placeholder="????????????" />
                        </div>

                        <div class="form-outline mb-4">
                            <label class="form-label" for="comNum">???????????????</label>
                            <input type="text"   id = "comNum" name="comNum" required class="form-control" placeholder="???????????????" />
                        </div>




                        <button type="submit" class="btn btn-primary btn-block mb-4">????????????</button>
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
</html></script>