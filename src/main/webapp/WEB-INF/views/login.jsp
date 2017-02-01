<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="layout/nav2.jsp"/>
<!--===登陆部分===-->
<div class="row" style="height: 500px; margin-top: 20px">
    <div class="col-md-3 col-md-offset-4">
        <form:form class="form-signin" role="form" action="/check"
                   method="post">
            <h2 class="form-signin-heading">请登录</h2>
            <input type="text" class="form-control" style="margin: 10px 0;" placeholder="username"
                   required="" autofocus="" name="username">
            <input type="password" class="form-control" placeholder="password"
                   required="" name="password">
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="remember-me"> 记住我
                </label>
            </div>
            <button class="btn btn-lg btn-success btn-block" type="submit">登录</button>
        </form:form>
    </div>

</div>

<script src="./Signin Template for Bootstrap_files/ie10-viewport-bug-workaround.js"></script>
<jsp:include page="layout/foot.jsp"/>

