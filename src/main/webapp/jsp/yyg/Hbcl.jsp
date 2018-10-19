<%--
  Created by IntelliJ IDEA.
  User: c
  Date: 2018/10/17
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="http://cdn.staticfile.org/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="http://cdn.staticfile.org/jquery/3.3.1/jquery.min.js"></script>
    <script src="http://cdn.staticfile.org/popper.js/1.14.4/umd/popper.min.js"></script>
    <script src="http://cdn.staticfile.org/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://cdn.staticfile.org/vue/2.5.16/vue.min.js"></script>
    <title>Title</title>
    <style>
        .jc{
            font-weight: bold;
            font-size: 18px;
            margin-right:3%;
            margin-left:3%;
        }
        .from-control{
            height:25px;
            cursor: pointer;
        }
        .container{
            margin-top:5%;
        }
        .table{text-align: center;}
    </style>
</head>
<body>
<div style="width:100%;margin-top:3%;" id="app">

    <div style="border-bottom:2px solid #1faeff;width:90%;height:35px;margin-left:5%">
        <span style="margin-left:3%;font-weight: bold;color: #1faeff;">查询条件</span>
    </div>

    <div style="margin-top:3%;margin-left:9%">
        <form id="frm">
            <span class="jc">批次号</span>
            <input class="from-control" name="map['pch']"/>
            <span class="jc">出险人姓名</span>
            <input class="from-control" name="map['cxrxm']"/>
            <span class="jc">出险人证件号码</span>
            <input class="from-control" name="map['cxrzj']"/><br/><br/>
            <span class="jc">汇办状态</span>
            <select class="from-control" name="map['zt']" onchange="se(this)">
                <option value="3">待汇办</option>
                <option value="4">已汇办</option>
            </select>
            <br><br>
        </form>
        <button class="btn btn-info" style="position:relative;left:78%;width:8%;" @click="query()">查询</button>
    </div>

    <div style="border-bottom:2px solid #1faeff;width:90%;height:35px;margin-left:5%">
        <span style="margin-left:3%;font-weight: bold;color: #1faeff;">汇办案件信息</span>
    </div>

    <table class="table" style="width:90%;font-size: 12.5px;cursor: pointer;margin-left:5%">
        <thead class="thead-light">
        <tr>
            <th>序号</th>
            <th>批次号</th>
            <th>分案号</th>
            <th>保单号</th>
            <th>投保单位</th>
            <th>保险公司</th>
            <th>医院</th>
            <th>出险人姓名</th>
            <th>出险人性别</th>
            <th>出险人出生日期</th>
            <th>出险人证件号码</th>
            <th>受理日期</th>
            <th>汇办状态</th>
        </tr>
        </thead>
        <tbody id="tb">

        </tbody>
    </table>

    <div style="width:80%;margin-left:9%;">
        <button class="btn btn-secondary btn-sm" style="margin-left:40%;">首页</button>
        <button class="btn btn-secondary btn-sm">上一页</button>
        <button class="btn btn-secondary btn-sm">下一页</button>
        <button class="btn btn-secondary btn-sm" style="margin-right:30%;">尾页</button>
        第<span></span>页
        共<span></span>页
    </div>

</div>

<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" style="position:relative;left:80%;width:8%;" id="save">保存</button>

<!-- 模态框 -->
<div class="modal fade" id="myModal">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">

            <!-- 模态框头部 -->
            <div class="modal-header">
                <h4 class="modal-title">意见</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- 模态框主体 -->
            <div class="modal-body">
                处理意见:<input class="from-control" id="yj"/>
            </div>

            <!-- 模态框底部 -->
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="save()">确定</button>
            </div>

        </div>
    </div>
</div>
</body>
</html>
<script type="text/javascript">
    var hbid="";
    function one(obj){
        $(obj).css("background-color","#e7e7e7");
        $(obj).siblings().css("background-color","#FFFFFF");
        hbid=$(obj).children(":first").text();
    }
    function save(){
        $.ajax({
            url:'/BBM101/updateFa.action',
            type:'post',
            data:{"hbid":hbid,"yj":$("#yj").val()},
            dataType:'json',
            success:function () {
                if(data=="true"){
                    window.location.href="/BBM101/Hbcl.action";
                }
            }
        })
        $("#yj").val(hbid);
    }
    function se(obj){
        if($(obj).val()==3){
            $("#save").css("display","block");
        }else if($(obj).val()==4){
            $("#save").css("display","none");
        }
    }
    new Vue({
        el:'#app',
        data:{},
        mounted:function () {
            this.query();
        },
        methods: {
            query() {
                $("#tb").html("");
                $.ajax({
                    url: '/BBM101/GetHb.action',
                    type:'post',
                    data:$("#frm").serialize(),
                    dataType:'json',
                    success:function (data) {
                        for (var i=0;i<data.length;i++){
                            var str="<tr ondblclick='one(this)'>";
                            str+="<td>"+data[i].distributingcasesid+"</td>";
                            str+="<td>"+data[i].batch+"</td>";
                            str+="<td>"+data[i].distributingcasesnum+"</td>";
                            str+="<td>"+data[i].chitnumber+"</td>";
                            str+="<td>"+data[i].insureunit+"</td>";
                            str+="<td>"+data[i].insurancefirm+"</td>";
                            str+="<td>"+data[i].hospitalname+"</td>";
                            str+="<td>"+data[i].clientname+"</td>";
                            str+="<td>"+data[i].clientsex+"</td>";
                            str+="<td>"+data[i].clientsfz.substring(6,14)+"</td>";
                            str+="<td>"+data[i].clientsfz+"</td>";
                            str+="<td>"+data[i].distributingcasesid+"</td>";
                            if(data[i].distributingcasesstatic==3){
                                str+="<td>待汇办</td>";
                            }else if(data[i].distributingcasesstatic==4){
                                str+="<td>已汇办</td>";
                            }
                            str+="</tr>";
                            $("#tb").append(str);
                        }
                    }
                })
            }
        }
    })

</script>
