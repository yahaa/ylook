<!--
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
-->
<%--任务二 用bootstrap 来完成所有页面的布局这里我已经完成部分，还需完善和美化--%>
<jsp:include page="layout/nav3.jsp"/>
<div class="row">
    <div class="col-md-6 col-md-offset-3 align_center" style="margin-top: 25px">
        <form action="/user/do_publish" method="post">
            <div class="form-group has-warning">
                <label class="control-label" for="title">主题</label>
                <input type="text" class="form-control" id="title" placeholder="简单描述你要发布的内容的主题">
            </div>
            <div class="form-group has-warning">
                <label for="title" class="control-label">具体内容</label>
                <textarea class="form-control" rows="10"></textarea>
            </div>

            <div class="form-group has-success">
                <label for="start-time" class="control-label">开始</label>
                    <input type="time" class="form-control" id="start-time">
            </div>
            <div class="form-group has-success ">
                <label for="end-time" class="control-label">结束</label>
                    <input type="time" class="form-control" id="end-time">
            </div>
            <a class="btn btn-success col-md-4 col-md-offset-4" href="/user/do_publish">发布</a>
        </form>
    </div>
</div>

<jsp:include page="layout/foot.jsp"/>

