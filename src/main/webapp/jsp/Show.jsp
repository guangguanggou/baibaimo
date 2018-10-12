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
</style>

<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header custom-header">

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
                    <dd><a href="/jsp/Login.html">退出</a></dd>
                </dl>
            </li>
        </ul>
    </div>

    <div class="layui-side custom-admin" id="leftcontent">
        <div class="layui-side-scroll">

            <div class="custom-logo" style="">
                <img src="/image/logo%20(3).png" width="100" height="75" alt=""/>
                <h1>BaiBaiMo</h1>
            </div>
            <ul id="Nav" class="layui-nav layui-nav-tree">

                <c:forEach items="${list}" var="qx">
                    <li class="layui-nav-item">
                    <c:if test="${qx.tree==0}">
                            <a href="javascript:;">
                                <i class="layui-icon" style="font-size: 18px;">${qx.treeimg}</i>
                                <em>${qx.treename}</em>
                            </a>
                    </c:if>
                    <c:forEach items="${list2}" var="qx2">
                        <c:if test="${qx.treeid==qx2.tree}">
                            <dl class="layui-nav-child" data-type="tabAdd">
                                <dd><a href="${qx2.treeurl}" target="baoxian">${qx2.treename}</a></dd>
                            </dl>
                        </c:if>

                    </c:forEach>    
                    
                    </li>
                </c:forEach>

                <li class="layui-nav-item">
                    <a href="javascript:;">
                        <i class="layui-icon">&#xe612;</i>
                        <em>用户</em>
                    </a>
                    <dl class="layui-nav-child">
                        <dd data-type="tabAdd"><a>用户组</a></dd>
                        <dd><a>权限配置</a></dd>
                    </dl>
                </li>
            </ul>

        </div>
    </div>

    <div class="layui-body" id="layuibody" style="height: 100%;width: 100%;">
        <iframe src="/jsp/Login.html" id="box3" name="baoxian" frameborder="0"></iframe>
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
        $("#leftcontent").css("left","-=260px");
        $("#layuibody").css("left","0px");
        $("#bbm").css("left","0px");
    },function () {
        $("#leftcontent").css("left","+=260px");
        $("#layuibody").css("left","260px");
        $("#bbm").css("left","260px");
    })

</script>


<script>

</script>
</html>
