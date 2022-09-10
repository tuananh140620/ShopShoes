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
        
        <!-- icon -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/shop-homepage.css" rel="stylesheet">

        <!-- footer-->
        <link href="css/footer.css" rel="stylesheet">

        <!-- detail-->
        <link href="css/Detail.css" rel="stylesheet">

    <img style="padding-top: 1%" src="//bizweb.dktcdn.net/100/347/092/themes/708609/assets/banner.jpg?1613799907810">
</head

<body>


    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-warning fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#"
               style="font-size: 40px;font-weight: bold;"
               >SHOES 888</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <div 
        style="background: white"
        class="container">

        <div class="row">

            <!--        Category Các loại sản phẩm-->
            <!-- /.col-lg-9 -->
            <div class="container mt-5 mb-5">
                <div class="row d-flex justify-content-center">
                    <div class="col-md-10">
                        <div class="card">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="images p-3">
                                        <div class="text-center p-4"> <img id="main-image" src="${detail.image}" width="250" /> </div>

                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="product p-4">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="d-flex align-items-center"> <i class="fa fa-long-arrow-left"></i> <span class="ml-1"></span> </div> <i class="fa fa-shopping-cart text-muted"></i>
                                        </div>
                                        <div class="mt-4 mb-3"> <span class="text-uppercase text-muted brand"></span>
                                            <h5 class="text-uppercase">${detail.name}</h5>
                                            <div class="price d-flex flex-row align-items-center"> <span class="act-price">${detail.price}</span>                                              
                                            </div>
                                        </div>
                                        <p class="about">${detail.description}</p>
                                        <div class="sizes mt-5">
                                            <h6 class="text-uppercase">Size</h6> <label class="radio"> <input type="radio" name="size" value="S" checked> <span>S</span> </label> <label class="radio"> <input type="radio" name="size" value="M"> <span>M</span> </label> <label class="radio"> <input type="radio" name="size" value="L"> <span>L</span> </label> <label class="radio"> <input type="radio" name="size" value="XL"> <span>XL</span> </label> <label class="radio"> <input type="radio" name="size" value="XXL"> <span>XXL</span> </label>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="col-sm-5">
                                                <dl class="param param-inline">
                                                    <dt>Quantity: </dt>
                                                    <dd>
                                                        <select class="form-control form-control-sm" style="width:70px;">
                                                            <option> 1 </option>
                                                            <option> 2 </option>
                                                            <option> 3 </option>
                                                        </select>
                                                    </dd>
                                                </dl>  <!-- item-property .// -->
                                            </div> <!-- col.// -->

                                        </div> <!-- row.// -->
                                        
                                        <div class="cart mt-4 align-items-center"> 
                                            <button class="btn btn-warning text-uppercase mr-2 px-4">Add to cart</button> 
                                            <button class="btn btn-info text-uppercase mr-2 px-4">Buy now</button><hr>
                                            <button class="btn btn-danger text-uppercase mr-2 px-4 mt-3 ">Gọi ngay 0983697712</button>
                                            <i class="fa fa-heart text-muted"></i> <i class="fa fa-share-alt text-muted"></i> 
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>





        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Site footer -->
    <footer class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-6">
                    <h6>Shoes 888</h6>
                    <p class="text-justify">Giày chính hãng đảm bảo chất lượng!</p>
                </div>

                <div class="col-xs-6 col-md-3">
                    <h6>Thông tin</h6>
                    <ul class="footer-links">
                        <li><a href="http://localhost:8080/Shoes/home">Trang chủ</a></li>
                        <li><a href="https://www.adidas.com.vn/vi">ADIDAS</a></li>
                        <li><a href="https://www.nike.com/vn/">NIKE</a></li>
                        <li><a href="https://www.converse.com.vn/">CONVERSE</a></li>
                        <li><a href="https://vansvietnam.com/">VANS</a></li>
                        <li><a href="http://localhost:8080/Shoes/Detail.jsp">Thanh toán</a></li>
                    </ul>
                </div>

                <div class="col-xs-6 col-md-3">
                    <h6>Quick Links</h6>
                    <ul class="footer-links">
                        <li><a href="http://scanfcode.com/about/">About Us</a></li>
                        <li><a href="http://scanfcode.com/contact/">Contact Us</a></li>
                        <li><a href="http://scanfcode.com/contribute-at-scanfcode/">Contribute</a></li>
                        <li><a href="http://scanfcode.com/privacy-policy/">Privacy Policy</a></li>
                        <li><a href="http://scanfcode.com/sitemap/">Sitemap</a></li>
                    </ul>
                </div>
            </div>
            <hr>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-sm-6 col-xs-12">
                    <p class="copyright-text">Copyright &copy; 2017 All Rights Reserved by 
                        <a href="#">Scanfcode</a>.
                    </p>
                </div>

                <div class="col-md-4 col-sm-6 col-xs-12">
                    <ul class="social-icons">
                        <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
                        <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
                    </ul>
                </div>
            </div>
        </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/Detail.js"></script>

</body>

</html>
