<%--
  Created by IntelliJ IDEA.
  User: YanAn
  Date: 2018/10/15
  Time: 23:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/js/quickui/libs/js/jquery.js"></script>
    <script type="text/javascript" src="/js/quickui/libs/js/language/cn.js"></script>
    <script type="text/javascript" src="/js/quickui/libs/js/framework.js"></script>
    <link href="/js/quickui/libs/css/import_basic.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" id="skin" prePath="/js/quickui/" scrollerY="false"/>
    <link rel="stylesheet" type="text/css" id="customSkin"/>
    <script>
        function customHeightSet(contentHeight){
            $(".noPageBg").height(contentHeight);
        }
    </script>
<body style="background-color:#ffffff;">
<div class="noPageBg">
    <div class="noPageBtnContainer">

        <a class="reindexBtn" onClick="javascript :history.back(-1);">返回上一页</a>
        <a class="reindexBtn">返回首页</a>
    </div>
</div>
</body>

</html>
