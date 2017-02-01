<%--
  Created by IntelliJ IDEA.
  User: zihua
  Date: 17-1-13
  Time: 下午6:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>
        ylook | Welcome...
    </title>
    <!-- Meta -->
    <meta charset="utf-8"/>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <!-- CSS Global Compulsory-->
    <link rel="stylesheet" href="../statics/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../statics/css/style.css">
</head>
<style>
    a {
        color: #000;
    }
</style>
<body>
<div class="container">
    <div class="row">
        <div class="navbar navbar navbar-fixed-top" style="background-color: #fff4f7;border-color: #7eae81;">
            <div class="nav-center">
                <ul class="nav navbar-nav ">
                    <li>
                        <div class="logo">
                            <a href="/home">
                                <img alt="Logo" id="logo-header" src="../statics/img/zoro.png"/>
                            </a>
                        </div>
                    </li>
                    <li>
                        <a href="/home">主页</a>
                    </li>
                    <li>
                        <a href="/user/publish">发布悬赏</a>
                    </li>
                    <li>
                        <a href="#dongtai">做任务</a>
                    </li>

                </ul>


                <ul class="pull-right nav navbar-nav">

                    <li>
                        <a class="login-btn" href="/login">登录</a>
                    </li>
                    <li class="devider"></li>
                    <li>
                        <a class="login-btn" href="#">帮助？</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="empty-block" style="height: 60px;"></div>
