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
    <link rel="stylesheet" href="../statics/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../statics/css/style.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="nav-center">
                <ul class="nav navbar-nav ">
                    <li>
                        <div class="logo">
                            <a href="/home">
                                <img alt="Logo" id="logo-header" src="../statics/img/logo1-default.png"/>
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

                <div class="col-md-2">
                    <div class="search-icon">
                        <i class="glyphicon glyphicon-search"></i>
                    </div>

                </div>
                <div class="col-md-4">
                    <div class="input-group search-input">
                        <input type="text" class="form-control">
                        <span class="input-group-btn">
                    <button class="btn btn-default" type="button">Go!</button>
                    </span>
                    </div>
                </div>

                <ul class="pull-right nav navbar-nav">
                    <li>
                        <a href="login"><i class="icon-globe"></i>登陆</a>
                    </li>
                    <li class="devider"></li>
                    <li>
                        <a class="login-btn" href="register">注册</a>
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
