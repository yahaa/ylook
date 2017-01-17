<!--
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
-->
<jsp:include page="layout/nav3.jsp"/>
<div class="row">
    <div class="col-md-6">
        <div class="threepage">
            <div id="myCarousel" class="carousel slide">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active"><img src="../statics/img/bg1.jpg" alt="First slide"></div>
                    <div class="item"><img src="../statics/img/bg6.jpg" alt="Second slide"></div>
                    <div class="item"><img src="../statics/img/bg4.jpg" alt="Third slide"></div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="carousel-control left" href="#myCarousel"
                   data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
                <a class="carousel-control right" href="#myCarousel"
                   data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="threepage">
            <div id="myCarouse2" class="carousel slide">
                <!-- 轮播（Carousel）指标 -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarouse2" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarouse2" data-slide-to="1"></li>
                    <li data-target="#myCarouse2" data-slide-to="2"></li>
                </ol>
                <!-- 轮播（Carousel）项目 -->
                <div class="carousel-inner">
                    <div class="item active"><img src="../statics/img/bg1.jpg" alt="First slide"></div>
                    <div class="item"><img src="../statics/img/bg6.jpg" alt="Second slide"></div>
                    <div class="item"><img src="../statics/img/bg4.jpg" alt="Third slide"></div>
                </div>
                <!-- 轮播（Carousel）导航 -->
                <a class="carousel-control left" href="#myCarouse2"
                   data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
                <a class="carousel-control right" href="#myCarousel"
                   data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>

    </div>

</div>
<div class="row">
    <div ><a href="#" class="btn btn-success" id="dongtai" >最新动态</a></div>
    <div id="tuijian"></div>
</div>

<jsp:include page="layout/foot.jsp"/>


<script>

    $(function () {
        $.ajax({
            url: '/more_info',
            type: 'get',
            success: function (data) {
                data = JSON.parse(data);
                var dataConainer = $('#tuijian');
                for (var i = 0; i < data.length; i++) {

                    var template = $('<div class="panel panel-warning"></div>');

                    var hading = $('<div class="panel-heading">' +
                            '<h3>标题' + data[i].deId + '</h3></div>')
                    var body = $('<div class="panel-body">内容' + data[i].details + ' </div>')
                    template.append(hading).append(body);

                    dataConainer.append(template);
                }
            },
            error: function (data) {
                console.log(data);

            }


        })

    });

</script>
