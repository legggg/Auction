<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="icon" type="image/png" sizes="96x96" href="photo/topnew.png">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sign Up</title>
    <%@include file="header/header.jsp"%>

</head>
<body>

<form action="/signup" method="post">



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

        <div class="container px-4 py-5 px-md-5 text-center text-lg-start my-5">
            <div class="row gx-lg-5 align-items-center mb-5">
                <div class="col-lg-6 mb-5 mb-lg-0" style="z-index: 10">
                    <h1 class="my-5 display-5 fw-bold ls-tight" style="color: hsl(218, 81%, 95%)">
                        ???????????? ??????????????? <br />
                        <span style="color: hsl(218, 81%, 75%)">?????? Sell Me??? ???????????????</span>
                    </h1>
                    <p class="mb-4 opacity-70" style="color: hsl(218, 81%, 85%)">
                        ????????? ?????? ????????????, ??????????????????, ?????? ?????????..
                    </p>
                </div>

                <div class="col-lg-6 mb-5 mb-lg-0 position-relative">
                    <div id="radius-shape-1" class="position-absolute rounded-circle shadow-5-strong"></div>
                    <div id="radius-shape-2" class="position-absolute shadow-5-strong"></div>

                    <div class="card bg-glass">
                        <div class="card-body px-4 py-5 px-md-5">
                            <form>
                                <!-- 2 column grid layout with text inputs for the first and last names -->
                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <label class="form-label" for="userId">?????????</label>
                                            <input type="text" id="userId" name="userId" placeholder="id" required class="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <label class="form-label" for="userName">??????</label>
                                            <input type="text" id="userName" name="userName" placeholder="name" required  class="form-control" />
                                        </div>
                                    </div>
                                </div>




                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <label class="form-label" for="userPw">????????????</label>
                                            <input type="password" id="userPw" name="userPw" placeholder="pw"required class="form-control" />

                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <label class="form-label" for="userPurpose">???????????? ??????</label>
                                            <input type="password" id="user123" name="user123" placeholder="p123" required class="form-control" />
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <label class="form-label" for="userBirth">????????????</label>
                                            <input type="date" id="userBirth" name="userBirth" placeholder="birthday" required  class="form-control" />


                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <label class="form-label" for="userEmail">Email</label>
                                            <input type="text" id="userEmail"  name="userEmail" placeholder="email" required  class="form-control" />

                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <label class="form-label" for="userPhNum">????????? ??????</label>
                                            <input type="text" id="userPhNum" name="userPhNum" placeholder="phone number" required  class="form-control" />

                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <label class="form-label" for="userPurpose">?????? ??????</label>
                                            <input type="text" id="userPurpose" name="userPurpose" placeholder="purpose" required class="form-control" />

                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <label class="form-label">??????</label>
                                            <input class="form-control" type="text" id="sample6_postcode" placeholder="????????????">
                                            <input type="button" onclick="sample6_execDaumPostcode()" value="???????????? ??????" class="btn btn-primary btn-block mb-4 display-center" style="margin-bottom: -20px !important;"><br>
                                            <input class="form-control"type="text" id="sample6_address" name="userAddress" placeholder="??????" style="margin-top: 25px !important;"><br>
                                            <input class="form-control"type="text" id="sample6_detailAddress" placeholder="????????????" style="margin-bottom: 5px; margin-top: -20px">
                                            <input class="form-control"type="text" id="sample6_extraAddress" placeholder="????????????" >
                                            <input type="hidden" id="sample6_city" name="userCity" placeholder="??????">

                                        </div>
                                    </div>

                                </div>


                                <%--                                <div class="row">--%>
                                <%--                                    <div class="col-md-6 mb-4">--%>
                                <%--                                        <div class="form-outline">--%>



                                <%--                                        </div>--%>
                                <%--                                    </div>--%>

                                <%--                                </div>--%>




                                <!-- Password input -->
                                <div class="form-outline mb-4">
                                    <label class="form-label" for="userGender">?????? : </label>


                                    <input class="form-check-input" type="radio" id = "userGender" name="userGender" value="???" checked>
                                    <label class="form-check-label" for="userGender">
                                        ??????&nbsp;
                                    </label>


                                    <input class="form-check-input" type="radio" name="userGender" value="???">??????

                                </div>

                                <!-- Submit button -->
                                <button type="submit" class="btn btn-primary btn-block mb-4 display-center" >
                                    ????????????
                                </button>


                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</form>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
</body>
<footer>
    <%@include file="header/footer.jsp"%>
</footer>
</html>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

                // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
                var addr = ''; // ?????? ??????
                var extraAddr = ''; // ???????????? ??????

                //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
                if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
                    addr = data.roadAddress;
                } else { // ???????????? ?????? ????????? ???????????? ??????(J)
                    addr = data.jibunAddress;
                }

                // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
                if(data.userSelectedType === 'R'){
                    // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
                    // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
                    if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // ???????????? ??????, ??????????????? ?????? ????????????.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // ????????? ??????????????? ?????? ????????? ?????????.
                    document.getElementById("sample6_extraAddress").value = extraAddr;

                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                var add = addr.split(" ");
                var city=add[0];
                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                document.getElementById("sample6_city").value = city;
                // ????????? ???????????? ????????? ????????????.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>