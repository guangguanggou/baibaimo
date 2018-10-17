<%--
  Created by IntelliJ IDEA.
  User: YanAn
  Date: 2018/10/16
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/js/quickui/libs/js/jquery.js"></script>
    <script type="text/javascript" src="/js/quickui/libs/js/language/cn.js"></script>
    <script type="text/javascript" src="/js/quickui/libs/js/framework.js"></script>
    <link href="/js/quickui/libs/css/import_basic.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="/js/layui/css/layui.css" type="text/css"/>
    <link rel="stylesheet" type="text/css" id="skin" prePath="/js/quickui/" scrollerY="false"/>
    <link rel="stylesheet" type="text/css" id="customSkin"/>
    <!--框架必需end-->

    <!--动画方式入场效果start-->
    <script type="text/javascript" src="/js/quickui/libs/js/pic/jomino.js"></script>
    <script>
        $(function(){
            $(".navIcon").hide();
            $(".navIcon").jomino();
        });
        function customHeightSet(contentHeight){
            $(".page_content").height(contentHeight);
        }
    </script>
</head>
<style>
    body{background-image: url("/image/5.jpg") ;
        background-size: 100% 100%;}
    #mydiv{
        box-shadow: -15px 15px 15px rgba(6, 17, 47, 0.7);
        opacity: 1;
        top: 20px;
        -webkit-transition-timing-function: cubic-bezier(0.68, -0.25, 0.265, 0.85);
        -webkit-transition-property: -webkit-transform,opacity,box-shadow,top,left;
        transition-property: transform,opacity,box-shadow,top,left;
        -webkit-transition-duration: .5s;
        transition-duration: .5s;
        -webkit-transform-origin: 161px 100%;
        -ms-transform-origin: 161px 100%;
        transform-origin: 161px 100%;
        -webkit-transform: rotateX(0deg);
        transform: rotateX(0deg);
        position: relative;
        width: 100%;
        /*border-top: 2px solid #D8312A;*/
        height: 100%;
        position: absolute;
        left: 0;
        right: 0;
        margin: auto;
        top: 0;
        bottom: 0;
        padding: 100px 40px 40px 40px;
        background: #35394a;
        /* Old browsers */
        /* FF3.6+ */
        background: -webkit-gradient(linear, left bottom, right top, color-stop(0%, #35394a), color-stop(100%, rgb(0, 0, 0)));
        /* Chrome,Safari4+ */
        background: -webkit-linear-gradient(230deg, rgba(53, 57, 74, 0) 0%, rgb(0, 0, 0) 100%);
        /* Chrome10+,Safari5.1+ */
        /* Opera 11.10+ */
        /* IE10+ */
        background: linear-gradient(230deg, rgba(53, 57, 74, 0) 0%, rgb(0, 0, 0) 100%);
        /* W3C */
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='rgba(53, 57, 74, 0)', endColorstr='rgb(0, 0, 0)',GradientType=1 );
        /* IE6-9 fallback on horizontal gradient */
        overflow: auto;
    }
    .nav{
        height: 126px;
        border-radius: 10px;
        background-color:#000000;
        background-color:rgba(0,0,0,0.4);
        width: 260px;
        color: #C2BE9E;
        cursor: pointer;
    }
    .yuan{
        height: 126px;
        border-radius: 10px;
        background-color: #7EC4CC;
        background-color:rgba(0,0,0,0.4);
        width: 260px;
        color: #C2BE9E;
        cursor: pointer;
    }
    .nav:hover{
        background-color:#000000;/* IE6和部分IE7内核的浏览器(如QQ浏览器)下颜色被覆盖 */
        background-color:rgba(0,0,0,0.6);
        color: #FFFFFF;
    }
    .yuan:hover{
        background-color:#000000;/* IE6和部分IE7内核的浏览器(如QQ浏览器)下颜色被覆盖 */
        background-color:rgba(0,0,0,0.6);
        color: #FFFFFF;
    }
</style>
<body>
<div  id="mydiv" class="page_content">
            <div  style="width:100%;margin:0 auto;">

                <c:forEach items="${list}" var="role">
                    <c:if test="${role.tree==0}">
                        <div class="nav" title="${role.treeid}" style="float: left;margin: 50px 10px 0px 70px;padding-left: 10px;">
                            <br/>
                            <div class="navIcon_left"><i class="layui-icon" style="font-size: 70px;">${role.treeimg}</i></div>
                            <div class="navIcon_right">
                                <div class="navIcon_right_title" style="font-size: 20px;">${role.treeid}${role.treename}</div>
                                <div class="navIcon_right_con" style="letter-spacing: 6px;">
                                    ${role.beizhu2}
                                </div>
                            </div>


                        </div>
                            <c:forEach items="${list2}" var="role2" varStatus="xx">
                                <c:if test="${role.treeid==role2.tree}">
                                  <div class="aaa" title="${role2.tree}"  style="width: 50%;height: 200px;float: left;display: none;margin-top: 20px;">
                                     <div class="yuan" style="border: 1px solid #ffffff;width: 180px;height: 180px;border-radius: 180px;margin-left: 33%;text-align: center;">
                                         <span style="display: block;margin: 72px 0px 0px 0px;font-size: 20px;font-family: 微软雅黑;font-weight: bold;">${role2.treename}</span>
                                     </div>
                                  </div>
                                </c:if>
                            </c:forEach>
                    </c:if>
                </c:forEach>

</div>

</div>
</body>
<script src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/canvas-particle.js"></script>
<script type="text/javascript">
    window.onload = function() {
        //配置
        var config = {
            vx: 4,	//小球x轴速度,正为右，负为左
            vy: 4,	//小球y轴速度
            height: 2,	//小球高宽，其实为正方形，所以不宜太大
            width: 2,
            count: 200,		//点个数
            color: "121, 162, 185", 	//点颜色
            stroke: "130,255,255", 		//线条颜色
            dist: 6000, 	//点吸附距离
            e_dist: 20000, 	//鼠标吸附加速距离
            max_conn: 10 	//点到点最大连接数
        }

        //调用
        CanvasParticle(config);
    }

    $(".nav").toggle(function () {
        $(".aaa").hide();
        $("#qx2").show();
        var tree=$(this).prop("title");
        $(".aaa").each(function () {
            if (tree==$(this).prop("title")){
                $(this).show(1000);
            }
        })
        $(".nav").hide(200);
        $(this).show(200);
        $(this).css("position","absolute");
        $(this).css("left","32%");
        $(this).css("top","30%");

    },function () {
        $(".nav").show(500);
        $("#qx2").hide();
        $(".aaa").css("display","none");
        $(".nav").css("position","static");
    })
    $(function () {
       /* $.ajax({
            url:"/homepage/getRole.action",
            type:"post",
            data:{aid:""},
            dataType:"json",
            success:function (data) {
                alert(data);

            }
        })*/
    })
</script>
</html>