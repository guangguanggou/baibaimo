<%--
  Created by IntelliJ IDEA.
  User: YanAn
  Date: 2018/10/10
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/js/layui/css/layui.css" type="text/css"/>
    <link rel="stylesheet" href="/js/assets/css/layui.css">
    <link rel="stylesheet" href="/js/assets/css/admin.css">
    <link rel="icon" href="/favicon.ico">

</head>

<style>
    #box3{
        width: 100%;
        height: 100%;
    }
    #mydiv{
    }
    #dbu{
        background: #35394a;
        /* Old browsers */
        /* FF3.6+ */
        background: -webkit-gradient(linear, left bottom, right top, color-stop(50%, #35394a), color-stop(100%, rgb(0, 0, 0)));
        /* Chrome,Safari4+ */
        background: -webkit-linear-gradient(230deg, rgba(53, 57, 74, 0) 0%, rgb(0, 0, 0) 100%);
        /* Chrome10+,Safari5.1+ */
        /* Opera 11.10+ */
        /* IE10+ */
        background: linear-gradient(0deg, rgba(53, 57, 74, 0) 100%, rgb(0, 0, 0) 100%);
    }
    .layui-nav-child:hover{
        border-top: 1px solid #f0f0f0;
        border-bottom: 1px solid #f0f0f0;
    }
</style>

<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header custom-header" id="dbu">

        <ul class="layui-nav layui-layout-left" id="bbm">
            <li class="layui-nav-item slide-sidebar" lay-unselect>
                <a href="javascript:;" class="icon-font"><i class="ai ai-menufold"></i></a>
            </li>
        </ul>

        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">${user.aname}</a>
                <dl class="layui-nav-child">
                    <dd><a href="">帮助中心</a></dd>
                    <dd><a href="/homepage/logout.action">退出</a></dd>
                </dl>
            </li>
        </ul>
    </div>

    <div class="layui-side custom-admin" id="mydiv">


        <div class="layui-side-scroll">
            <div class="custom-logo" style="background-color: #001529;border-bottom:1px solid #f0f2f5;">
                &nbsp;&nbsp;<img src="/image/logo%20(3).png" width="100" height="75" alt=""/>
                <span style="font-family: Arimo;position: relative;top:7px;left: 10px;">BBM保险</span>
            </div>
            <ul id="Nav" class="layui-nav layui-nav-tree" style="margin-top: 20px;">

                <li class="layui-nav-item">
                    <a href="/homepage/getRole.action?aid=${user.aid}" target="baoxian">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <i class="layui-icon" style="font-size: 20px;">&#xe68e;</i>
                        &nbsp;&nbsp;
                        <em style="letter-spacing: 8px;font-family: Ebrima;font-size: 18px;">首页</em>
                    </a>
                </li>
                <c:forEach items="${list}" var="qx" varStatus="status">
                    <c:if test="${status.index==0}">
                        <li class="layui-nav-item layui-nav-itemed" style="">
                    </c:if>
                    <c:if test="${status.index!=0}">
                        <li class="layui-nav-item" style="">
                    </c:if>
                    <c:if test="${qx.tree==0}">
                            <a href="javascript:;">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <i class="layui-icon" style="font-size: 20px;">${qx.treeimg}</i>
                                &nbsp;&nbsp;
                                <em style="letter-spacing: 8px;font-family: Ebrima;font-size: 18px;">${qx.treename}</em>

                            </a>
                    </c:if>
                    <c:forEach items="${list2}" var="qx2">
                        <c:if test="${qx.treeid==qx2.tree}">
                            <dl class="layui-nav-child" data-type="tabAdd" style="">
                                <dd><a href="${qx2.treeurl}" style="font-size: 16px;font-family: 微软雅黑;" target="baoxian">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${qx2.treename}</a></dd>
                            </dl>
                        </c:if>

                    </c:forEach>
                    </li>

                </c:forEach>

                <li class="layui-nav-item">
                    <a href="javascript:;">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <i class="layui-icon" style="font-size: 20px;">&#xe612;</i>&nbsp;&nbsp;
                        <em style="letter-spacing: 8px;font-family: Ebrima;font-size: 18px;">用户</em>
                    </a>
                    <dl class="layui-nav-child" data-type="tabAdd">
                        <dd><a href="" style="font-size: 16px;font-family: 微软雅黑;" target="baoxian">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户组</a></dd>
                    </dl>
                    <dl class="layui-nav-child" data-type="tabAdd">
                        <dd><a href="" style="font-size: 16px;font-family: 微软雅黑;" target="baoxian">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;权限配置</a></dd>
                    </dl>
                </li>
            </ul>

        </div>
    </div>
    <div class="layui-body" id="layuibody" style="height: 100%;width: 85%;">
        <iframe src="/homepage/getRole.action?aid=${user.aid}" id="box3" name="baoxian" frameborder="0"></iframe>
    </div>
</div>

<script src="/js/jquery.js"></script>
<script src="/js/assets/layui.js"></script>
<script src="/js/index.js" data-main="home"></script>
</body>
<script>
    layui.use('element', function(){
        var $ = layui.jquery
            ,element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

    });

    $(".icon-font").toggle(function () {
        $("#mydiv").css("left","-=260px");
        $("#layuibody").css("left","0px");
        $("#layuibody").css("width","100%");
        $("#bbm").css("left","0px");
    },function () {
        $("#mydiv").css("left","+=260px");
        $("#layuibody").css("left","260px");
        $("#layuibody").css("width","85%");
        $("#bbm").css("left","260px");
    })

</script>


</html>
