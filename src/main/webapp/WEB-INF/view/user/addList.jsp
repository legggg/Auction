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
<form action="/updatelist" method="post">

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
            <h2 style="font-size:1.5em">이력서 추가</h2>
            <div class="col-lg-5 align-items-center">
                <div class="card-body py-5 px-md-5">
                    <section>
                        <!-- Password input -->

                        <div class="form-outline mb-4">
                            <label class="form-label" for="title">제목</label>
                            <input type="text" name="title" value="${list.title}" required id = "title" class="form-control" placeholder="제목" />
                        </div>


                        <label class="form-label" for="content">내용</label>
                        <div class="form-outline mb-4">
                            <textarea class="form-control" id="content" cols="50" rows="8"><c:out value="${list.content}" /></textarea>
                            <%--                            <input type="text" name="content" id = "content" class="form-control" placeholder="내용"/>--%>
                        </div>


                        <div class="form-outline mb-4">
                            <label class="form-label" for="job">희망직종</label>
                            <input type="text"  name="job" value="${list.job}" id = "job" class="form-control" placeholder="희망직종" />
                        </div>


                        <div class="form-outline mb-4">
                            <label class="form-label" for="endDate">마감일</label>
                            <input type="date" name="endDate_1" required id = "endDate" class="form-control" placeholder="마감일" />
                        </div>

                        <div class="form-outline mb-4">
                            <label class="form-label">공개여부(기업공개): </label>
                            <input type="radio" name="open" value="N">비공개
                            <input type="radio" name="open" value="Y">공개
                        </div>
                        <div class="form-outline mb-4">
                            <label class="form-label">완전공개여부(공개시 다른 유저의 이력서 열람 가능): </label>
                            <input type="radio" value="N">비공개
                            <input type="radio" value="Y">공개
                        </div>


                        <button type="submit" class="btn btn-primary btn-block mb-4">저장</button>
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