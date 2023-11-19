<%@ page import="Main.CS2.entity.Contact" %>
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

//    List<Contact> roleList= (List<Contact>)session.getAttribute("roleList");

%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title> 个人通讯录系统</title>
    <link rel="stylesheet" href="css/public.css"/>
    <link rel="stylesheet" href="css/style.css"/>


</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1> 个人通讯录系统(软件体系结构实验3)/BS</h1>
    <%--<div class="publicHeaderR">--%>
        <%--<div style="width: 46px;height: 46px;border-radius: 50%;overflow: hidden;margin-left: -100px;float: left">--%>
            <%--<img style="width: 100%" src="img/head_img.jpeg" alt="头像">--%>
        <%--</div>--%>
        <%--<span style="float: left" ><a href="login.html">退出</a></span>--%>
    <%--</div>--%>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time">2019年1月1日 11:11  星期一</span>
    <%--<a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>--%>
</section>
<!--主体内容-->
<section class="publicMian ">

    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>联系人信息列表</span>
        </div>
        <div class="search">
                <form method="post" action="contactSearch">
                    <span>查询条件：</span>
                    <input type="text" name="keywords" placeholder="请输入关键字"/>
                    <input type="submit" data-ajax="post" value="查询"/>
                    <a href="contactAdd.jsp">新增联系人</a>
                </form>
        </div>
        <!--角色-->
        <table class="providerTable" cellpadding="0" cellspacing="0">
            <tr class="firstTr">
                <th width="10%">编号</th>
                <th width="15%">姓名</th>
                <th width="15%">住址</th>
                <th width="15%">电话</th>
                <th width="10%">操作</th>
            </tr>
            <c:forEach items="${contactList}"  var="contact">
            <tr>
                <td>${contact.ccode}</td>
                <td>${contact.cname}</td>
                <td>${contact.caddress}</td>
                <td>${contact.cphone}</td>
                <td>
                    <a href="contactUpdateDetails?ccode=${contact.ccode}&cname=${contact.cname}&caddress=${contact.caddress}&cphone=${contact.cphone}"><img src="img/xiugai.png" alt="修改" title="修改"/></a>
                    <a href="contactDelete?ccode=${contact.ccode}" class="removeUser"><img src="img/schu.png" alt="删除" title="删除"/></a>

                </td>
                <%--contactDelete?ccode=${contact.ccode}--%>
            </tr>
            </c:forEach>

        </table>
    </div>
</section>

<%--<!--点击删除按钮后弹出的页面-->--%>
<%--<div class="zhezhao"></div>--%>
<%--<div class="remove" id="removeUse">--%>
    <%--<div class="removerChid">--%>
        <%--<h2>提示</h2>--%>
        <%--<div class="removeMain">--%>
            <%--<p>你确定要删除该角色吗？</p>--%>
            <%--<a href="contactDelete?ccode=${contact.ccode}" id="yes">确定</a>--%>
            <%--<a href="#" id="no">取消</a>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<footer class="footer">
</footer>

<script src="js/jquery.js"></script>
<script src="js/js.js"></script>
<script src="js/time.js"></script>

</body>
</html>