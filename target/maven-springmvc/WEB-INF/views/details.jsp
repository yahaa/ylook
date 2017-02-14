<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>选课中心</title>
    <meta charset="utf-8"/>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <link rel="stylesheet" href="../../statics/css/bootstrap.min.css"/>

</head>

<body>
<div class="container">
    <div class="row">
        <p>这是详情页</p>
        <p class="hidden" id="getid">${id}</p>
    </div>
</div>

</body>
</html>
<script src="../../statics/js/jquery-3.1.1.min.js"></script>
<script src="../../statics/js/bootstrap.min.js"></script>


<script>
    $(document).ready(function () {
        alert($('#getid').text());
    });
</script>

