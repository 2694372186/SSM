<%@ page import="java.util.List" %>
<%@ page import="com.card.pojo.Card" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>校园二手市场主页</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/inhead.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/card.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body >
<!--导航-->
<div class="top">
    <div class="top-1">
        <ul class="nav nav-pills">
            <li><a href="index.html">&nbsp;&nbsp;&nbsp;首页&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/goShop">&nbsp;&nbsp;&nbsp;商城&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="card.html">&nbsp;&nbsp;&nbsp;购物车&nbsp;&nbsp;&nbsp;</a></li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    &nbsp;&nbsp;&nbsp;个人账户&nbsp;&nbsp;&nbsp;<span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="userinformation.html">个人信息</a></li>
                    <li><a href="#">个人订单</a></li>
                    <li><a href="useraddcommdit.html">添加商品</a></li>
                </ul>
            </li>
            <li><a href="#">&nbsp;&nbsp;&nbsp;联系我们&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="login.html">&nbsp;&nbsp;&nbsp;登录&nbsp;&nbsp;&nbsp;</a></li>
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
    </div>
    <div class="top-2">
        <input type="text" placeholder="请输入要查询物品的信息" class="input-top">
    </div>
    <div class="top-3">
        <a href="#" class="button-top"><span>搜索</span></a>
    </div>

</div>

<!--购物车栏-->
<div class="center-top"><p>购&nbsp;&nbsp;物&nbsp;&nbsp;车</p></div>

<div class="center">
    <form>
        <table>
            <thead >
            <tr style="width: 100%;height: 50px;color: white;font-family: 微软雅黑; font-weight: bolder;">
                <th style="width: 100px;border-radius:10px 0 0 10px;background-color: rgb(101, 104, 110);"></th>
                <th style="width: 400px;text-align: center;border-radius:0 10px 10px 0;background-color:  rgb(101, 104, 110);">商品信息</th>
                <th style="width: 200px;text-align: center;border-radius: 10px;background-color: rgb(101, 104, 110);">商品金额</th>
                <th style="width: 200px;text-align: center;border-radius: 10px;background-color:  rgb(101, 104, 110);">商品数量</th>
                <th style="width: 200px;text-align: center;border-radius: 10px;background-color:  rgb(101, 104, 110);">总金额</th>
                <th style="width: 200px;text-align: center;border-radius: 10px;background-color:  rgb(101, 104, 110);">编辑</th>
            </tr>
            </thead>
            <tbody>
            <!--此处放购物车信息-->
<%--            <tr style="border: 2px solid rgb(78, 77, 77);font-size: 15px;font-family: 微软雅黑; font-weight: bolder;text-align: center">--%>
<%--                <td>--%>
<%--                    <input type="checkbox" name="check" style="position: relative;;margin-left: 50px;">--%>
<%--                </td>--%>
<%--                <td><img src="img/主页书.jpg" width="200px" height="150px">我的精神家园</td>--%>
<%--                <td>￥50.0元</td>--%>
<%--                <td>2</td>--%>
<%--                <td>￥100.0元</td>--%>
<%--                <td><input type="button" value="删除"></td>--%>
<%--            </tr>--%>



<%--            <%--%>
<%--                List<Card> cardList= (List<Card>) session.getAttribute("cardList");--%>
<%--            %>--%>
            <c:forEach items="${cardList}" var="card">
                <tr style="border: 2px solid rgb(78, 77, 77);font-size: 15px;font-family: 微软雅黑; font-weight: bolder;text-align: center">
                    <td>
                        <input type="checkbox" name="check" style="position: relative;;margin-left: 50px;">
                    </td>
                    <td><img src="${pageContext.request.contextPath}/images/${card.pic}" width="200px" height="150px">${card.name}</td>
                    <td>￥${card.price}元</td>
                    <td>${card.count}</td>
                    <td>￥${card.price*card.count}元</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/shop/insert/${card.id}"><input type="button" value="添加"></a>
                        <a href="${pageContext.request.contextPath}/shop/delete/${card.id}"><input type="button" value="减少"></a>
                    </td>
                </tr>
            </c:forEach>

            <!--提交列-->

            <tr  style="border: 2px solid rgb(78, 77, 77);font-size: 15px;font-family: 微软雅黑; font-weight: bolder;height: 70px;">
                <td>
                    <input type="checkbox" id="checkAll" onclick="checkAll1()" style="position: relative;margin-left: 40px;" />
                    <span id="spanss">全选</span></td>
                <td colspan="5" >
                    <div style="position: relative;margin-left: 850px;">总计：￥${sum}元&nbsp;&nbsp;&nbsp;
                    <input type="button" value="提交" style="width: 100px;height: 30px;background-color: rgba(5, 94, 177, 0.986);border-radius: 10px;">
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>
</body>
</html>