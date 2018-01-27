<%--
  Created by IntelliJ IDEA.
  User: Forward
  Date: 2018/1/14
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- FlatFy Theme - Andrea Galanti /-->
<!doctype html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if IE 9]>    <html class="no-js ie9" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="Flatfy Free Flat and Responsive HTML5 Template ">
    <meta name="author" content="">

    <title>博客列表</title>

    <!-- Bootstrap core CSS -->
    <link href="${ctxStatic}/flatfytheme/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Google Web Font -->
    <link href="${ctxStatic}/flatfytheme/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Arvo:400,700' rel='stylesheet' type='text/css'>

    <!-- Custom CSS-->
    <link href="${ctxStatic}/flatfytheme/css/general.css" rel="stylesheet">

    <!-- Owl-Carousel -->
    <link href="${ctxStatic}/flatfytheme/css/custom.css" rel="stylesheet">
    <link href="${ctxStatic}/flatfytheme/css/owl.carousel.css" rel="stylesheet">
    <link href="${ctxStatic}/flatfytheme/css/owl.theme.css" rel="stylesheet">
    <link href="${ctxStatic}/flatfytheme/css/style.css" rel="stylesheet">
    <link href="${ctxStatic}/flatfytheme/css/animate.css" rel="stylesheet">
    <link href="${ctxStatic}/icon-font/iconfont.css" rel="stylesheet">

    <!-- Magnific Popup core CSS file -->
    <link rel="stylesheet" href="${ctxStatic}/flatfytheme/css/magnific-popup.css">

    <script src="${ctxStatic}/flatfytheme/js/modernizr-2.6.2.min.js"></script>  <!-- Modernizr /-->
</head>

<body id="home">

<!-- Preloader -->
<div id="preloader">
    <div id="status"></div>
</div>

<!-- NavBar-->
<nav class="navbar-default" role="navigation" style="position: fixed;">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#home">Forward Web</a>
        </div>

        <div class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
            <ul class="nav navbar-nav">
                <li class="menuItem"><a href="#useit">技术博客</a></li>
                <li class="menuItem"><a href="#screen">个人爱好</a></li>
                <li class="menuItem"><a href="#credits">生活随笔</a></li>
                <li class="menuItem"><a href="#contact">留言灌水</a></li>
            </ul>
        </div>

    </div>
</nav>


<!-- Use it -->
<div id ="useit" class="content-section-a">

    <div class="container">

        <div class="row">
            <div class="col-sm-12 wow fadeInLeftBig"  data-animation-delay="200">
                <h3 class="section-heading">第${blogType}类博客</h3>
                <div class="sub-title lead3">我本人在学习工作当中所遇到的问题和总结的经验。</div>
                <p class="lead">
                <table style="width: 100%;">
                    <c:forEach items="${blogList}" var="blog">
                      <tr>
                          <td colspan="2" class="lead2"><a href="${ctxFront}/blogDetail?id=${blog.id}">${blog.blogTitle}</a></td>
                          <td>${blog.gmtCreate}</td>
                      </tr>
                    </c:forEach>
            </table>
            </div>
        </div>
    </div>
    <!-- /.container -->
</div>

<!-- Contact -->
<div id="contact" class="content-section-b">
    <div class="container">
        <div class="row">

            <div class="col-md-6 col-md-offset-3 text-center wrap_title">
                <h2>留言灌水</h2>
                <p class="lead" style="margin-top:0">A special thanks to Death.</p>
            </div>

            <form role="form" action="" method="post" >
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="InputName">Your Name</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="InputName" id="InputName" placeholder="Enter Name" required>
                            <span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="InputEmail">Your Email</label>
                        <div class="input-group">
                            <input type="email" class="form-control" id="InputEmail" name="InputEmail" placeholder="Enter Email" required  >
                            <span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="InputMessage">Message</label>
                        <div class="input-group">
                            <textarea name="InputMessage" id="InputMessage" class="form-control" rows="5" required></textarea>
                            <span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span>
                        </div>
                    </div>

                    <input type="submit" name="submit" id="submit" value="Submit" class="btn wow tada btn-embossed btn-primary pull-right">
                </div>
            </form>

            <hr class="featurette-divider hidden-lg">
            <div class="col-md-5 col-md-push-1 address">
                <address>
                    <h3>Office Location</h3>
                    <p class="lead"><a href="">The Pentagon<br>
                        Washington, DC 20301</a><br>
                        Phone: XXX-XXX-XXXX<br>
                        Fax: XXX-XXX-YYYY</p>
                </address>

                <h3>Social</h3>
                <li class="social">
                    <a href="#"><i class="fa fa-facebook-square fa-size"> </i></a>
                    <a href="#"><i class="fa  fa-twitter-square fa-size"> </i> </a>
                    <a href="#"><i class="fa fa-google-plus-square fa-size"> </i></a>
                    <a href="#"><i class="fa fa-flickr fa-size"> </i> </a>
                </li>
            </div>
        </div>
    </div>
</div>



<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <h3 class="footer-title">Follow Me!</h3>
                <p>Vuoi ricevere news su altri template?<br/>
                    Visita Andrea Galanti.it e vedrai tutte le news riguardanti nuovi Theme!<br/>
                    Go to: <a  href="http://andreagalanti.it" target="_blank">andreagalanti.it</a> More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
                </p>

                <!-- LICENSE -->
                <a rel="cc:attributionURL" href=""
                   property="dc:title">Flatfy Theme </a> by
                <a rel="dc:creator" href=""
                   property="cc:attributionName">Andrea Galanti</a>
                is licensed to the public under
                <BR>the <a rel="license"
                           href="http://creativecommons.org/licenses/by-nc/3.0/it/deed.it">Creative
                Commons Attribution 3.0 License - NOT COMMERCIAL</a>.


            </div> <!-- /col-xs-7 -->

            <div class="col-md-5">
                <div class="footer-banner">
                    <h3 class="footer-title">Flatfy Theme</h3>
                    <ul>
                        <li>12 Column Grid Bootstrap</li>
                        <li>Form Contact</li>
                        <li>Drag Gallery</li>
                        <li>Full Responsive</li>
                        <li><a href="${ctx}">Admin Page</a> </li>
                    </ul>

                </div>
            </div>
        </div>
    </div>
</footer>

<!-- JavaScript -->
<script src="${ctxStatic}/flatfytheme/js/jquery-1.10.2.js"></script>
<script src="${ctxStatic}/flatfytheme/js/bootstrap.js"></script>
<script src="${ctxStatic}/flatfytheme/js/owl.carousel.js"></script>
<script src="${ctxStatic}/flatfytheme/js/script.js"></script>
<!-- StikyMenu -->
<script src="${ctxStatic}/flatfytheme/js/stickUp.min.js"></script>
<script type="text/javascript">
    jQuery(function($) {
        $(document).ready( function() {
            $('.navbar-default').stickUp();

        });
    });

</script>
<!-- Smoothscroll -->
<script type="text/javascript" src="${ctxStatic}/flatfytheme/js/jquery.corner.js"></script>
<script src="${ctxStatic}/flatfytheme/js/wow.min.js"></script>
<script>
    new WOW().init();
</script>
<script src="${ctxStatic}/flatfytheme/js/classie.js"></script>
<script src="${ctxStatic}/flatfytheme/js/uiMorphingButton_inflow.js"></script>
<!-- Magnific Popup core JS file -->
<script src="${ctxStatic}/flatfytheme/js/jquery.magnific-popup.js"></script>
</body>

</html>

