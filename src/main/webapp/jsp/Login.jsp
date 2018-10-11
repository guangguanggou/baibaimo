<%--
  Created by IntelliJ IDEA.
  User: YanAn
  Date: 2018/10/8
  Time: 23:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="/js/jquery.js"></script>
<html>
<head>
    <title>Login</title>
</head>
<style>
    #aa{
        width: 100%;
        height: 100%;
        position: absolute;
        top: 0px;
        left: 0px;
        background-image: url("/image/1.jpg");
        background-size: 100% 100%;
        -webkit-filter: blur(5px);
        -moz-filter: blur(5px);
        -ms-filter: blur(5px);
        filter: blur(5px);
    }
    #bb{
        width: 200px;
        height: 105px;
        /*box-shadow: 1px 1px 6px  #ffffff;
        border-radius: 5px;*/
        position: absolute;
        z-index: 10;
        left: 44%;
        top:18%;
    }
    #cc{
        width: 350px;
        height: 200px;
        position: absolute;
        z-index: 10;
        left: 550px;
        top:35%;
    }

    #zi{
        font-family: "微软雅黑 Light";
        font-size: 20px;
        font-weight: 600;
        background: linear-gradient(to bottom, red, blue);
        -webkit-background-clip: text;
        color: transparent;
    }
    input{
        box-shadow: 1px 1px 6px  #ffffff;
        border-radius: 2px;
        background-color: transparent;
        margin-top: 20px;
    }
    #anum{
        background-image: url("/image/person.png");
        background-repeat: no-repeat;
        background-size: 40px 36px;
    }
    #apass{
        background-image: url("/image/lock.png");
        background-repeat: no-repeat;
        background-size: 40px 36px;
    }
</style>
<body>
 <div id="aa">
 </div>

<div id="bb">
    <img src="/image/logo%20(2).png" width="170">
    <br/>
    <span id="zi">&nbsp;&nbsp;白百陌平安保险</span>
</div>
<div id="cc">

    <form id="frm" action="/userControll/login.action" method="post">
        <input type="text" name="userName" id="anum" AUTOCOMPLETE="OFF" style="width: 250px; height: 37px;color: #2E2D3C;padding-left:40px;font-family: '微软雅黑 Light';font-weight: bold;">
        <input type="password" name="passWord" id="apass" style="width: 250px; height: 37px;color: #000000;padding-left:40px;">
        <br/>
        <button id="sub" style="font-weight: bold;font-family: '微软雅黑 Light';color: #f0f0f0;background-color: transparent;margin-top: 20px;width: 250px;height: 37px;">Login系统</button>
    </form>


</div>
 <span style="position: absolute;bottom: 2px;left:42%;">版权所有权@AAA教育培训机构</span>

</body>


</html>

<script>

$("#sub").click(function () {
    $("#frm").submit();
})

$("input").focus(function () {
    $(this).css("background-color","transparent");
    $(this).css("border","1px solid #CCCCCC");
})

$(function () {
    $("#cursorMessageDiv").remove();
    $("#copyrightinfo").remove();
})
</script>