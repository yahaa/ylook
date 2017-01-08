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
    <title>post</title>

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
<!--=== End Top ===-->

<!--=== Header ===-->
<div class="header">
    <div class="container">
        <!-- logo -->
        <div class="logo">
            <a href="index.html"><img id="logo-header" src="../statics/img/logo1-default.png" alt="Logo"/></a>
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
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">主页
                                <b class="caret"></b>
                            </a>

                            <b class="caret-out"></b>
                        </li>

                        <li>
                            <a href="" class="dropdown-toggle" data-toggle="dropdown">动态
                                <b class="caret"></b>
                            </a>
                            <b class="caret-out"></b>
                        </li>
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">联系我们
                                <b class="caret"></b>
                            </a>
                            <b class="caret-out"></b>
                        </li>
                        <li><a class="search"><i class="icon-search search-btn"></i></a></li>
                    </ul>
                    <div class="search-open">
                        <div class="input-append">
                            <form/>
                            <input type="text" class="span3" placeholder="Search"/>
                            <button type="submit" class="btn-u">Go</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--=== Breadcrumbs ===-->
<div class="row-fluid breadcrumbs margin-bottom-40">
    <div class="container">
        <h1 class="pull-left">详情填写</h1>
    </div>
</div>

<!--===填写详情===-->
<div class="container">
    <div class="row-fluid blog-page blog-item">
        <div class="span2">
        </div>
        <div class="post-comment span8">
        <form action="/user/do_publish" method="post">
            <label>标题</label>
             <input type="text" class="span7" name="title" />
            <label>具体内容 <span class="color-red">*</span></label>
            <textarea rows="8" class="span10" name="details" ></textarea>
            <label>辅导时间</label>
            <input type="text" class="span7" />
            <label>等级要求</label>
            <input type="text" class="span7" />
            <label>薪酬</label>
            <input type="text" class="span7" />
            <label>发起人</label>
            <input type="text" class="span7" />
            <p><button type="submit" class="btn-u">发布</button></p>
            </form>
        </div>
        <div class="span2">
        </div>
    </div>
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