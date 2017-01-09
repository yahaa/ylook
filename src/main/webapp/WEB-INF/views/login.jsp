<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<!--[if IE 7]>
<html lang="en" class="ie7"> <![endif]-->
<!--[if IE 8]>
<html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]>
<html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en"> <!--<![endif]-->
<head>
    <title>login</title>

    <!-- Meta -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <!-- CSS Global Compulsory-->
    <link rel="stylesheet" href="../statics/plugins/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../statics/css/style.css"/>
    <link rel="stylesheet" href="../statics/css/headers/header1.css"/>
    <link rel="stylesheet" href="../statics/plugins/bootstrap/css/bootstrap-responsive.min.css"/>
    <link rel="stylesheet" href="../statics/css/style_responsive.css"/>
    <link rel="shortcut icon" href="favicon.ico"/>
    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="../statics/plugins/font-awesome/css/font-awesome.css"/>
    <!-- CSS Theme -->
    <link rel="stylesheet" href="../statics/css/themes/default.css" id="style_color"/>
    <link rel="stylesheet" href="../statics/css/themes/headers/default.css" id="style_color-header-1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>

<body>

<!--=== 顶部 ===-->
<div class="top">
    <div class="container">
        <ul class="loginbar pull-right">

            <li class="devider">&nbsp;</li>
            <li><a href="page_faq.html" class="login-btn">帮助？</a></li>
            <li class="devider">&nbsp;</li>

        </ul>
    </div>
</div>


<!--=== Header ===-->
<div class="header">
    <div class="container">
        <div class="logo">
            <a href="/"><img id="logo-header" src="../statics/img/logo1-default.png" alt="Logo"/></a>
        </div>

        <!-- Menu -->
        <div class="navbar">
            <div class="navbar-inner">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="nav-collapse collapse">
                    <ul class="nav top-2">
                        <li>
                            <a href="/">主页</a>
                        </li>

                        <li>
                            <a href="">动态</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>


<!--===登陆部分===-->
<div class="container">
    <div class="row-fluid">
        <form class="log-page" action="/check" method="post">
            <h3>登陆 ylook</h3>
            <div class="input-prepend">
                <span class="add-on"><i class="icon-user"></i></span>
                <input class="input-xlarge" type="text" placeholder="Username" name="username"/>
            </div>
            <div class="input-prepend">
                <span class="add-on"><i class="icon-lock"></i></span>
                <input class="input-xlarge" type="password" placeholder="password" name="password"/>
            </div>
            <div class="controls form-inline">
                <label class="checkbox"><input type="checkbox"/>记住我</label>
                <button class="btn-u pull-right" type="submit">登陆</button>
                <p>${msg}</p>
            </div>
            <hr/>
            <h4>忘记密码 ?</h4>
            <p><a class="color-green" href="#">找回</a>密码.</p>
        </form>
    </div>
</div>


<script type="text/javascript" src="../statics/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="../statics/js/modernizr.custom.js"></script>
<script type="text/javascript" src="../statics/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="../statics/plugins/back-to-top.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="../statics/js/app.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {
        App.init();
    });
</script>
<script src="../statics/js/respond.js"></script>

</body>
</html> 