<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Dashboard - SB Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3" href="admin">Sell Me</a>
    <!-- Sidebar Toggle-->

    <!-- Navbar Search-->
    <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
        <div class="input-group">
            <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
            <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
        </div>
    </form>
    <!-- Navbar-->
    <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#!">Settings</a></li>
                <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                <li><hr class="dropdown-divider" /></li>
                <li><a class="dropdown-item" href="#!">Logout</a></li>
            </ul>
        </li>
    </ul>
</nav>
<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <div class="sb-sidenav-menu-heading">Core</div>
                    <a class="nav-link" href="admin">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        Dashboard
                    </a>
                    <div class="sb-sidenav-menu-heading">Interface</div>
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                        Layouts
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="layout-static.html">Static Navigation</a>
                            <a class="nav-link" href="layout-sidenav-light.html">Light Sidenav</a>
                        </nav>
                    </div>
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                        <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                        Pages
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                Authentication
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="login.html">Login</a>
                                    <a class="nav-link" href="register.html">Register</a>
                                    <a class="nav-link" href="password.html">Forgot Password</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                Error
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="401.html">401 Page</a>
                                    <a class="nav-link" href="404.html">404 Page</a>
                                    <a class="nav-link" href="500.html">500 Page</a>
                                </nav>
                            </div>
                        </nav>
                    </div>
                    <div class="sb-sidenav-menu-heading">관리</div>
                    <a class="nav-link" href="board">
                        <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                        이력서
                    </a>
                    <a class="nav-link" href="table">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        회원목록
                    </a>
                </div>
            </div>
            <div class="sb-sidenav-footer">
                <div class="small">Logged in as:</div>
                Admin
            </div>
        </nav>
    </div>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Dashboard</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active">HOME</li>
                </ol>
                <main class="row">
                    <div class="col-lg-8">
                        <div class="row">


                            <div class="col-xxl-4 col-xl-6">

                                <div class="card info-card monthly-card">

                                    <div class="card-body">
                                        <h5 class="card-title">TODAY <span>| 방문자 수</span></h5>

                                        <div class="d-flex align-items-center">
                                            <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                <i class="bi bi-calendar3"></i>
                                            </div>
                                            <div class="ps-3">
                                                <h6>174</h6>
                                                <span class="text-danger small pt-1 fw-bold">19%</span> <span class="text-muted small pt-2 ps-1">decrease</span>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div><!-- End MONTHLY Card -->


                            <!-- WEEKLY Card -->
                            <div class="col-xxl-4 col-md-6">
                                <div class="card info-card weekly-card">
                                    <div class="card-body">
                                        <h5 class="card-title">WEEKLY <span>| 방문자 수</span></h5>

                                        <div class="d-flex align-items-center">
                                            <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                <i class="bi bi-calendar3-week"></i>
                                            </div>
                                            <div class="ps-3">
                                                <h6>972</h6>
                                                <span class="text-success small pt-1 fw-bold">270%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div><!-- End WEEKLY Card -->

                            <!-- TODAY Card -->
                            <div class="col-xxl-4 col-md-12">
                                <div class="card info-card today-card">

                                    <div class="card-body">
                                        <h5 class="card-title">MONTHLY <span>| 방문자 수</span></h5>

                                        <div class="d-flex align-items-center">
                                            <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                <i class="bi bi-calendar3-event"></i>
                                            </div>
                                            <div class="ps-3">
                                                <h6>174</h6>
                                                <span class="text-success small pt-1 fw-bold">N/A</span> <span class="text-muted small pt-2 ps-1">increase</span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div><!-- End Today Card -->


                        </div>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        방문자 통계
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        등록된 이력서의 수

                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                        </div>
                        <!--여기가 차트 아래-->
                        <div id="layoutSidenav_cont">
                            <main>
                                <div class="container-fluid px-4">
                                    <h1 class="mt-4">유저목록</h1>


                                    <section class="section area">
                                        <div class="row">
                                            <div class="col-lg-12">


                                                <!-- General Form Elements -->

                                                <div class="table-responsive">
                                                    <div class="table-wrapper">
                                                        <div class="table-title">
                                                        </div>
                                                        <table class="table table-striped table-hover">
                                                            <thead>
                                                            <tr>
                                                                <th>Id</th>
                                                                <th>Pw</th>
                                                                <th>Name</th>
                                                                <th>Email</th>
                                                                <th>phnum</th>
                                                                <th>Birth</th>
                                                                <th>Gender</th>
                                                                <th>Address</th>
                                                                <th>Purpose</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>

                                                            <c:forEach items="${userList}" var="u">
                                                                <tr>
                                                                    <td>${u.userId}</td>
                                                                    <td>${u.userPw}</td>
                                                                    <td>${u.userName}</td>
                                                                    <td>${u.userEmail}</td>
                                                                    <td>${u.userPhNum}</td>
                                                                    <td>${u.userBirth}</td>
                                                                    <td>${u.userGender}</td>
                                                                    <td>${u.userAddress}</td>
                                                                    <td>${u.userPurpose}</td>
                                                                </tr>
                                                            </c:forEach>

                                                            </tbody>
                                                        </table>
                                                        <div class="clearfix">
                                                            <ul class="pagination justify-content-center">
                                                                <li class="page-item disabled"><a href="#" class="page-link">Previous</a></li>
                                                                <li class="page-item active"><a href="#" class="page-link">1</a></li>
                                                                <li class="page-item"><a href="#" class="page-link">2</a></li>
                                                                <li class="page-item"><a href="#" class="page-link">3</a></li>
                                                                <li class="page-item"><a href="#" class="page-link">4</a></li>
                                                                <li class="page-item"><a href="#" class="page-link">5</a></li>
                                                                <li class="page-item"><a href="#" class="page-link">Next</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                    </section>

                                </div>
                            </main>
                        </div>
                    </div>
                </main>
            </div>
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid px-4">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; Your Website 2022</div>
                        <div>
                            <a href="#">Privacy Policy</a>
                            &middot;
                            <a href="#">Terms &amp; Conditions</a>
                        </div>
                    </div>
                </div>
            </footer>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="js/datatables-simple-demo.js"></script>
</body>
</html>
</html>