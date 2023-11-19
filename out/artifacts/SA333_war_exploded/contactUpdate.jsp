
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 小吹
  Date: 2022/8/18
  Time: 5:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%

%>



<!DOCTYPE html>
<html>

<head lang="en">
    <meta charset="UTF-8">
    <title> 个人通讯录系统</title>
    <link rel="stylesheet" href="css/public.css" />
    <link rel="stylesheet" href="css/style.css" />
    <style>
        .privilege input{
            width: 20px;
            height: 20px;
            vertical-align: middle;
            /* margin-right: 30px; */
        }
        .privilege{
            line-height: 20px;
        }
    </style>
</head>

<body>
<!--头部-->
<header class="publicHeader">
    <h1> 个人通讯录系统(软件体系结构实验3)/BS</h1>

    <%--<div class="publicHeaderR">--%>
        <%--<div style="width: 46px;height: 46px;border-radius: 50%;overflow: hidden;margin-left: -100px;float: left">--%>
            <%--<img style="width: 100%" src="img/head_img.jpeg" alt="头像">--%>
        <%--</div>--%>
        <%--<span style="float: left"><a href="login.html">退出</a></span>--%>
    <%--</div>--%>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time">2019年1月1日 11:11 星期一</span>
    <%--<a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>--%>
</section>
<!--主体内容-->
<section class="publicMian ">
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>联系人信息列表 >> 联系人修改页面</span>
        </div>
        <div class="providerAdd">
            <form action="contactUpdate?ccode=${contact.ccode}" method="post">
                <!--div的class 为error是验证错误，ok是验证成功-->

                <div>
                    <label for="cname">联系人姓名：</label>
                    <input type="text" name="cname" id="cname" value="${contact.cname}"/>
                    <span>*请输入联系人姓名</span>
                </div>
                <div>
                    <label for="caddress">联系人住址：</label>
                    <input type="text" name="caddress" id="caddress" value="${contact.caddress}"/>
                    <span>*请输入联系人住址</span>
                </div>
                <div>
                <label for="cphone">联系人电话：</label>
                <input type="text" name="cphone" id="cphone" value="${contact.cphone}"/>
                <span>*请输入联系人电话</span>
                </div>


                <div class="providerAddBtn">
                    <!--<a href="#">保存</a>-->
                    <!--<a href="userList.html">返回</a>-->
                    <input type="submit" data-ajax="post" value="保存" onclick="history.back(-1)" />
                    <input type="button" value="返回" onclick="history.back(-1)" />
                </div>
            </form>
        </div>

    </div>
</section>

<footer class="footer">
</footer>
<script src="js/time.js"></script>
<script src="js/jquery.js"></script>

</body>

</html>