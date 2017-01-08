<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<!DOCTYPE html>
<!--[if IE 7]>
<html lang="en" class="ie7"> <![endif]-->
<!--[if IE 8]>
<html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]>
<html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<head>
    <title>
        ylook | Welcome...
    </title>
    <!-- Meta -->
    <meta charset="utf-8"/>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- CSS Global Compulsory-->
    <link href="../statics/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../statics/css/style.css" rel="stylesheet"/>
    <link href="../statics/css/headers/header1.css" rel="stylesheet"/>
    <link href="../statics/plugins/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet"/>
    <link href="../statics/css/style_responsive.css" rel="stylesheet"/>
    <link href="favicon.ico" rel="shortcut icon"/>
    <!-- CSS Implementing Plugins -->
    <link href="../statics/plugins/font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link href="../statics/plugins/flexslider/flexslider.css" media="screen" rel="stylesheet" type="text/css"/>
    <link href="../statics/plugins/parallax-slider/css/parallax-slider.css" rel="stylesheet" type="text/css"/>
    <!-- CSS Theme -->
    <link href="../statics/css/themes/default.css" id="style_color" rel="stylesheet"/>
    <link href="statics/css/themes/headers/default.css" id="style_color-header-1" rel="stylesheet"/>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
</head>
<body>

<!--顶部-->
<div class="top">
    <div class="container">
        <ul class="loginbar pull-right">
            <li>
                <i class="icon-globe">
                </i>
                <a href="login">
                    登陆
                    <i class="icon-sort-up">
                    </i>
                </a>

            </li>
            <li class="devider">
            </li>
            <li>
                <a class="login-btn" href="register">
                    注册
                </a>
            </li>
            <li class="devider">
            </li>
            <li>
                <a class="login-btn" href="login.html">
                    帮助？
                </a>
            </li>
        </ul>
    </div>
</div>
<!--头部 -->
<div class="header">
    <div class="container">
        <!-- Logo -->
        <div class="logo">
            <a href="/home">
                <img alt="Logo" id="logo-header" src="../statics/img/logo1-default.png"/>
            </a>
        </div>
        <!-- /logo -->
        <!-- Menu -->
        <div class="navbar">
            <div class="navbar-inner">
                <a class="btn btn-navbar" data-target=".nav-collapse" data-toggle="collapse">
                            <span class="icon-bar">
                            </span>
                    <span class="icon-bar">
                            </span>
                    <span class="icon-bar">
                            </span>
                </a>
                <!-- /nav-collapse -->
                <div class="nav-collapse collapse">
                    <ul class="nav top-2">
                        <li class="active">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="/home">
                                主页
                                <b class="caret">
                                </b>
                            </a>
                            <b class="caret-out">
                            </b>
                        </li>
                        <li>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="">
                                发布悬赏
                            </a>
                            <b class="caret-out">
                            </b>
                        </li>
                        <li>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="">
                                做任务
                            </a>
                            <b class="caret-out">
                            </b>
                        </li>
                        <li>
                            <a class="search">
                                <i class="icon-search search-btn">
                                </i>
                            </a>
                        </li>
                    </ul>
                    <div class="search-open">
                        <div class="input-append">
                            <form>
                            </form>
                            <input class="span3" placeholder="Search" type="text"/>
                            <button class="btn-u" type="submit">
                                Go
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--主页图片-->
<div class="slider-inner">
    <div class="da-slider" id="da-slider">
        <div class="da-slide">
            <div class="da-img">
                <img alt="" src="../statics/plugins/parallax-slider/img/1.png"/>
            </div>
        </div>
        <div class="da-slide">
            <div class="da-img span6">
                <div class="span6">
                    <iframe allowfullscreen="" frameborder="0" height="320" mozallowfullscreen=""
                            src="http://player.vimeo.com/video/47911018" webkitallowfullscreen="" width="100%">
                    </iframe>
                </div>
            </div>
        </div>
        <div class="da-slide">
            <div class="da-img">
                <img alt="image01" src="../statics/plugins/parallax-slider/img/html5andcss3.png"/>
            </div>
        </div>
        <nav class="da-arrows">
            <span class="da-arrows-prev"></span>
            <span class="da-arrows-next"></span>
        </nav>
    </div>
</div>
<!--展示区 -->
<div class="container">

    <div class="headline">
        <h3>
            兼职推荐
        </h3>
    </div>
    <ul class="thumbnails">
        <li class="span3">
            <div class="thumbnail-style thumbnail-kenburn">
                <div class="thumbnail-img">
                    <div class="overflow-hidden">
                        <img alt="" src="../statics/img/carousel/2.jpg"/>
                    </div>
                    <a class="btn-more hover-effect" href="#">
                        read more +
                    </a>
                </div>
                <h3>
                    <a class="hover-effect" href="#">
                        Our Work
                    </a>
                </h3>
                <p>
                    Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta
                    sem.
                </p>
            </div>
        </li>
        <li class="span3">
            <div class="thumbnail-style thumbnail-kenburn">
                <div class="thumbnail-img">
                    <div class="overflow-hidden">
                        <img alt="" src="../statics/img/carousel/3.jpg"/>
                    </div>
                    <a class="btn-more hover-effect" href="#">
                        read more +
                    </a>
                </div>
                <h3>
                    <a class="hover-effect" href="#">
                        One More Work
                    </a>
                </h3>
                <p>
                    Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta
                    sem.
                </p>
            </div>
        </li>
        <li class="span3">
            <div class="thumbnail-style thumbnail-kenburn">
                <div class="thumbnail-img">
                    <div class="overflow-hidden">
                        <img alt="" src="../statics/img/carousel/9.jpg"/>
                    </div>
                    <a class="btn-more hover-effect" href="#">
                        read more +
                    </a>
                </div>
                <h3>
                    <a class="hover-effect" href="#">
                        Another Work
                    </a>
                </h3>
                <p>
                    Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta
                    sem.
                </p>
            </div>
        </li>
        <li class="span3">
            <div class="thumbnail-style thumbnail-kenburn">
                <div class="thumbnail-img">
                    <div class="overflow-hidden">
                        <img alt="" src="../statics/img/carousel/10.jpg"/>
                    </div>
                    <a class="btn-more hover-effect" href="#">
                        read more +
                    </a>
                </div>
                <h3>
                    <a class="hover-effect" href="#">
                        Huge Work
                    </a>
                </h3>
                <p>
                    Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta
                    sem.
                </p>
            </div>
        </li>
    </ul>
</div>

<!--这是页脚-->
<div class="footer">
    <div class="container">
        <div class="row-fluid">
            <div class="span2">
            </div>
            <div class="span4">
                <div class="headline"><h3>关于我们</h3></div>
                <p class="margin-bottom-25">本平台实现老师和学生在线教与学。</p>

            </div>
            <div class="span4">
                <div class="headline"><h3>联系我们</h3></div>
                <address>
                    宝山区上大路99号 <br/>
                    中国 上海<br/>
                    联系方式: 18721808563 <br/>
                    Email: <a href="mailto:1477765176@qq.com" class="">1477765176@qq.com</a>
                </address>

            </div>
            <div class="span2">
            </div>
        </div>
    </div>
</div>

<!--这是版权区-->
<div class="copyright">
    <div class="container">
        <div class="row-fluid">
            <div class="span8">
                <p>版权所有&copy; 上海大学。</p>
            </div>
            <div class="span4">
                <a href="index.html">
                    <img id="logo-footer" src="../statics/img/logo2-default.png"
                         class="pull-right" alt=""/>
                </a>
            </div>
        </div>
    </div>
</div>
</body>

</html>
