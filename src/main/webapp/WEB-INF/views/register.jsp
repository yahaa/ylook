<!--
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
-->
<%--任务二 用bootstrap 来完成所有页面的布局这里我已经完成部分，还需完善和要美化--%>
<jsp:include page="layout/nav4.jsp"/>
<div class="row">
    <div class="col-md-6 col-md-offset-3 align_center" style="margin-top: 25px">
        <form action="/user/do_publish" method="post">
            <div class="form-group">
                <label class="control-label" for="title">用户名<span class="color-red">*</span></label>
                <input type="text" class="form-control" id="title" placeholder="username">
            </div>
            <div class="form-group">
                <label for="title" class="control-label">密码<span class="color-red">*</span></label>
                <input type="password" class="form-control" id="password" placeholder="password">
            </div>

            <a class="btn btn-success col-md-4 col-md-offset-4" href="/user/do_publish">注册</a>
        </form>
    </div>
</div>

<jsp:include page="layout/foot.jsp"/>

