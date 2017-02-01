<!--
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
-->
<jsp:include page="layout/nav1.jsp"/> <%--这里是用jsp 导入公共部分--%>
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
                <a class="carousel-control right" href="#myCarouse2"
                   data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>

    </div>

</div>
<div class="row">
    <h3 id="dongtai" style="color: #4cae4c"> 最新动态</h3>
    <ul class="list-group" id="tuijian"></ul>
</div>

<jsp:include page="layout/foot.jsp"/> <%--这里是用jsp 导入公共部分--%>


<script>
    //任务一
    //这里是用jquery来解析 /more_info 返回的json 数据
    //我只是写了个样式，具体的细节还需要你们来完成
    $(function () {
        $.ajax({
            url: '/more_info',
            type: 'get',
            success: function (data) {
                data = JSON.parse(data);
                var dataConainer = $('#tuijian');
                for (var i = 0; i < data.length; i++) {
                    var li = $('<li class="list-group-item list-group-item-warning"></li>');
                    var mediadiv = $('<div class="media has-success"></div>');
                    var mediahead = $('<div class="media-left media-middle"></div>');
                    var heada = $('<a href="#"></a>');
                    var imag = $('<img class="media-object" src="../statics/img/64/witch.png" alt="ttt">');
                    heada.append(imag);
                    mediahead.append(heada);
                    var mediabody = $('<div class="media-body"></div>');
                    var mediah4 = $('<h4 class="media-heading">' + data[i].title + '</h4>');
                    var row1 = $('<div class="row"></div>');
                    var col1 = $('<div class="col-md-4"><p>' + data[i].details + '</p></div>');
                    row1.append(col1);
                    var row2 = $('<div class="row"></div>');
                    var col2 = $('<div class="col-md-4"><p>' + data[i].published + '</p></div>');
                    row2.append(col2);

                    mediabody.append(mediah4).append(row1).append(row2);

                    mediadiv.append(mediahead).append(mediabody);
                    li.append(mediadiv);
                    dataConainer.append(li);
                }
            },
            error: function (data) {
                console.log(data);

            }


        })

    });

</script>
