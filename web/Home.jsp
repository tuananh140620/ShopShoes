<%-- 
    Document   : Home
    Created on : Mar 11, 2021, 9:10:42 AM
    Author     : T u a n  A n h
<link rel="stylesheet" href="css/Home.css" /><%-- d?n ??n file css--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Shop Homepage - Start Bootstrap Template</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/shop-homepage.css" rel="stylesheet">

        <!-- footer-->
        <link href="css/footer.css" rel="stylesheet">

        <!-- navbar-->
        <link href="css/Navbar.css" rel="stylesheet">




    </head

    <body>


        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top btn-warning">
            <div class="container">
                <a 
                    style="font-size: 50px;color: white"
                    class="navbar-brand" href="http://localhost:8080/Shoes/home">SHOES 888</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div 
                    style="font-size: 30px;color: white"
                    class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home</a>
                        </li>

                        <c:if test="${sessionScope.acc.isAdmin == 1}">
                            <li class="nav-item">
                                <a class="nav-link" href="Account.jsp">Admin</a>
                            </li>
                        </c:if>

                        <c:if test="${sessionScope.acc.isSell == 1}">
                            <li class="nav-item">
                                <a class="nav-link" href="manager">Seller</a>
                            </li>

                        </c:if>

                        <c:if test="${sessionScope.acc != null}">
                            <li class="nav-item">
                                <a class="nav-link" href="#">Welcome ${sessionScope.acc.user}</a>
                            </li>    
                            <li class="nav-item">
                                <a class="nav-link" href="logout">Logout</a>
                            </li>

                        </c:if>

                        <c:if test="${sessionScope.acc == null}">
                            <li class="nav-item">
                                <a class="nav-link" href="Login.jsp">Login</a>
                            </li>
                        </c:if>

                    </ul>
                </div>
            </div>
        </nav>

        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="https://m.media-amazon.com/images/S/aplus-media/vc/30b5c04e-f1db-48eb-b9b4-d4bfce6c917b._CR0,0,1464,600_PT0_SX1464__.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="https://i.ytimg.com/vi/7bspjGKCi3g/maxresdefault.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="http://cgfolks.com/images/medialibrary/images/Converse_01.jpg" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>


        <!-- Page Content -->
        <div class="container">

            <!-- Search -->
            <link rel="stylesheet" href="css/Search.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
            <div class="container">
                <br/>
                <div class="row justify-content-center">
                    <div class="col-12 col-md-10 col-lg-8">
                        <form action="search" method="post" class="card card-sm">
                            <div class="card-body row no-gutters align-items-center">
                                <div class="col-auto">
                                    <i class="fas fa-search h4 text-body"></i>
                                </div>
                                <!--end of col-->
                                <div class="col">
                                    <input 
                                        name="txt" type="text"
                                        class="form-control form-control-lg form-control-borderless"  placeholder="Search shoes">
                                </div>
                                <!--end of col-->
                                <div class="col-auto">
                                    <button class="btn btn-lg btn-warning" type="submit">Search</button>
                                </div>
                                <!--end of col-->
                            </div>
                        </form>
                    </div>
                    <!--end of col-->
                </div>
            </div>
            <!-- Search -->

            <!-- Danh muc -->


            <!-- Danh muc -->

            <div class="row">

                <!--        Category Các loại sản phẩm-->
                <div class="col-lg-3">
                    <h1 class="my-4">MẪU GIÀY</h1>
                    <div class="list-group">
                        <c:forEach items="${listCC}" var="o"><!--load danh mục các loại giày-->
                            <li class="list-group-item text-white ${tag == o.cid ? "active":""}">
                                <a href="category?cid=${o.cid}" class="list-group-item">${o.cname}</a> 
                            </li>
                        </c:forEach>
                    </div>
                </div>

                <!-- /.col-lg-3 -->

                <div class="col-lg-9">



                    <div class="row">
                        <c:forEach items="${listP}" var="o">
                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="card h-100">
                                    <a href=""><img class="card-img-top" src="${o.image}" alt=""></a>
                                    <div class="card-body">
                                        <h4 class="card-title">
                                            <a href="detail?pid=${o.id}">${o.name}</a><!-- detail?pid= để click và từng product ra Detail.jsp -->
                                        </h4>
                                        <h5>${o.price} $</h5>
                                        <p class="card-text">${o.title}!</p>
                                    </div>
                                    <div class="col">
                                        <a href="#" class="btn btn-success btn-warning">ĐẶT HÀNG</a>
                                    </div>
                                    <div class="card-footer">
                                        <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <!-- /.row -->

                </div>
                <!-- /.col-lg-9 -->

            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

        <!-- Site footer -->
        <footer 
            style="color: white"
            class="site-footer">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-6">
                        <h1>Shoes 888</h1>
                        <h4 class="text-justify">Giày chính hãng đảm bảo chất lượng!</h4>
                    </div>

                    <div class="col-xs-6 col-md-3">
                        <h1>Thông tin</h1>
                        <ul class="footer-links">
                            <li><a href="http://localhost:8080/Shoes/home">Trang chủ</a></li>
                            <li><a href="https://www.adidas.com.vn/vi">ADIDAS</a></li>
                            <li><a href="https://www.nike.com/vn/">NIKE</a></li>
                            <li><a href="https://www.converse.com.vn/">CONVERSE</a></li>
                            <li><a href="https://vansvietnam.com/">VANS</a></li>
                            <li><a href="http://localhost:8080/Shoes/thanhtoan.jsp">Thanh toán</a></li>
                        </ul>
                    </div>

                    <div class="col-xs-6 col-md-3">
                        <h1>Liên hệ</h1>
                        <ul class="footer-links">
                            <li><a href="http://scanfcode.com/about/">Facebook</a></li>
                            <li><a href="http://scanfcode.com/contact/">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
                <div class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.4854095316464!2d105.5248756153544!3d21.01325499368237!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345b465a4e65fb%3A0xaae6040cfabe8fe!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyBGUFQ!5e0!3m2!1svi!2s!4v1616079291620!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                </div>
                <hr>
            </div>


        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
    </body>

</html>
