<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>校园二手市场主页</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/shopping.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/shopping.js"></script>
</head>
<body>
<!--导航-->
<div class="top">
    <div class="top-1">
        <ul class="nav nav-pills">
            <li><a href="#">&nbsp;&nbsp;&nbsp;首页&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/goShop">&nbsp;&nbsp;&nbsp;商城&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="${pageContext.request.contextPath}/shop/goCard">&nbsp;&nbsp;&nbsp;购物车&nbsp;&nbsp;&nbsp;</a></li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    &nbsp;&nbsp;&nbsp;个人账户&nbsp;&nbsp;&nbsp;<span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">个人信息</a></li>
                    <li><a href="#">个人订单</a></li>
                    <li><a href="#">添加商品</a></li>
                </ul>
            </li>
            <li><a href="#">&nbsp;&nbsp;&nbsp;联系我们&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="login.html">&nbsp;&nbsp;&nbsp;登录&nbsp;&nbsp;&nbsp;</a></li>
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
        </ul>
    </div>
    <div class="top-2">
        <input type="text" placeholder="请输入要查询物品的信息" class="input-top">
    </div>
    <div class="top-3">
        <a href="#" class="button-top"><span>搜索</span></a>
    </div>

</div>
<!--中间部分-->
<div class="center">
    <!--左侧导航栏-->
    <div class="center-left">

        <div class="navbar navbar-default" id="mycollapse">

            <ul class="nav nav-pills nav-stacked" style="background-color: rgb(241, 240, 238);">

                <li style="border: 1px solid rgb(202, 202, 202);">
                    <a href="#second-level-1" class="second-level accordion-toggle"
                       data-toggle="collapse"
                       data-parent="#mycollapse">
                        <p style="font-size: 18px;font-family: 微软雅黑;text-align: center;">数码科技</p>
                    </a>
                    <ul class="nav collapse" id="second-level-1" style="background-color: rgba(248, 255, 253, 0.952);">
                        <br>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="手机" id="手机"></a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="电脑" id="电脑"></a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="相机" id="相机"></a><br>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="智能设备" id="智能设备"></a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="手机配件" id="手机配件"></a>
                        <br><br>
                    </ul>
                </li>
                <li >
                    <a href="#second-level-2" class="second-level accordion-toggle"
                       data-toggle="collapse"
                       data-parent="#mycollapse">
                        <p style="font-size: 18px;font-family: 微软雅黑;text-align: center;">音影家电</p>
                    </a>
                    <ul class="nav collapse" id="second-level-2" style="background-color: rgba(248, 255, 253, 0.952);">
                        <br>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="生活电器" id="生活家电"></a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="个护电器" id="个护电器"></a><br>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="生活家电" id="生活家电"></a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="影音娱乐" id="影音娱乐"></a>
                        <br><br>
                    </ul>
                </li>

                <li style="border: 1px solid rgb(202, 202, 202);">
                    <a href="#second-level-3" class="second-level accordion-toggle"
                       data-toggle="collapse" data-parent="#mycollapse">
                        <p style="font-size: 18px;font-family: 微软雅黑;text-align: center;">鞋服配饰</p>
                    </a>
                    <ul class="nav collapse" id="second-level-3" style="background-color: rgba(248, 255, 253, 0.952);">
                        <br>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="女装:"></a><br>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="上衣" id="女上衣"></a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="外套" id="女外套"></a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="女裤" id="女裤"></a><br>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="裙子" id="裙子"></a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="套装" id="套装"></a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="鞋子" id="女鞋"></a><br><br>

                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="男装:"></a><br>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="上衣" id="上衣"></a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="外套" id="男外套"></a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="男裤" id="男裤"></a><br>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="卫衣" id="男卫衣"></a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="运动" id="运动衣"></a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="鞋子" id="男鞋"></a><br><br>

                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="袜子" id="袜子"></a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="配饰" id="配饰"></a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="帽子" id="帽子"></a>
                        <br><br>
                    </ul>
                </li>

                <li >
                    <a href="#second-level-4" class="second-level accordion-toggle"
                       data-toggle="collapse"
                       data-parent="#mycollapse">
                        <p style="font-size: 18px;font-family: 微软雅黑;text-align: center;">图书文具</p>
                    </a>
                    <ul class="nav collapse" id="second-level-4" style="background-color: rgba(248, 255, 253, 0.952);">
                        <br>
                        <a href="#" style="position: relative;margin-left: 50px;font-size: 15px;"><input type="button" value="文具" id="文具">&nbsp;&nbsp;&nbsp;</a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="教具" id="教具"></a><br>
                        <a href="#" style="position: relative;margin-left: 50px;font-size: 15px;"><input type="button" value="图书" id="图书">&nbsp;&nbsp;&nbsp;</a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="教材" id="教材"></a>
                        <br><br>
                    </ul>
                </li>

                <li style="border: 1px solid rgb(202, 202, 202);">
                    <a href="#second-level-5" class="second-level accordion-toggle"
                       data-toggle="collapse"
                       data-parent="#mycollapse">
                        <p style="font-size: 18px;font-family: 微软雅黑;text-align: center;">其他</p>
                    </a>
                    <ul class="nav collapse" id="second-level-5" style="background-color: rgba(248, 255, 253, 0.952);">
                        <br>
                        <a href="#" style="position: relative;margin-left: 50px;font-size: 15px;"><input type="button" value="手表" id="手表">&nbsp;&nbsp;&nbsp;</a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="眼镜" id="眼镜"></a><br>
                        <a href="#" style="position: relative;margin-left: 50px;font-size: 15px;"><input type="button" value="潮搭" id="潮搭">&nbsp;&nbsp;&nbsp;</a>
                        <a href="#" style="position: relative;margin-left: 30px;font-size: 15px;"><input type="button" value="服配" id="服配"></a>
                        <br><br>
                    </ul>
                </li>

            </ul>
        </div>

    </div>
    <!--右侧物品展示-->
    <div class="center-right">
        <!--此处从数据库读取物品信息-->

        <<div class="center2-1">
        <a href="#"><div class="center2-1-1"><!--此处放照片--><img src="${pageContext.request.contextPath}/images/苹果手机.jpg" width="120px" height="100px"></div></a>
        <div class="center2-1-2"><!--此处放物品信息-->
            <p style="font-size: 12px;text-align: center;">Apple&nbsp;&nbsp;iphone 12</p><br>
            <p style="font-size: 20px;text-align: center;">￥5499元</p>
        </div>
        <div class="center2-1-3"><a href="${pageContext.request.contextPath}/shop/add?id=1" style="font-size: 13px;color: rgb(136, 135, 135);"><input type="button" value="加入购物车" class="center-input"></a></div>
    </div>
        <div class="center2-1">
            <a href="#"> <div class="center2-1-1"><!--此处放照片--><img src="${pageContext.request.contextPath}/images/女包.jpg" width="120px" height="100px"></div></a>
            <div class="center2-1-2"><!--此处放物品信息-->
                <p style="font-size: 12px;text-align: center;">ELLE时尚女包</p><br>
                <p style="font-size: 20px;text-align: center;">￥319.0元</p>
            </div>
            <div class="center2-1-3"><a href="${pageContext.request.contextPath}/shop/add?id=2" style="font-size: 13px;color: rgb(136, 135, 135);"><input type="button" value="加入购物车" class="center-input"></a></div>
        </div>
        <div class="center2-1">
            <a href="#"> <div class="center2-1-1"><!--此处放照片--><img src="${pageContext.request.contextPath}/images/书.jpg" width="120px" height="100px"></div></a>
            <div class="center2-1-2"><!--此处放物品信息-->
                <p style="font-size: 12px;text-align: center;">我的精神家园<br>(王小波)</p>
                <p style="font-size: 20px;text-align: center;">￥40.0元</p>
            </div>
            <div class="center2-1-3"><a href="${pageContext.request.contextPath}/shop/add?id=3" style="font-size: 13px;color: rgb(136, 135, 135);"><input type="button" value="加入购物车" class="center-input"></a></div>
        </div>
        <div class="center2-1">
            <a href="#"><div class="center2-1-1"><!--此处放照片--><img src="${pageContext.request.contextPath}/images/收纳盒.jpg" width="120px" height="100px"></div></a>
            <div class="center2-1-2"><!--此处放物品信息-->
                <p style="font-size: 12px;text-align: center;">TENMA收纳盒</p><br>
                <p style="font-size: 20px;text-align: center;">￥79.0元</p>
            </div>
            <div class="center2-1-3"><a href="${pageContext.request.contextPath}/shop/add?id=4" style="font-size: 13px;color: rgb(136, 135, 135);"><input type="button" value="加入购物车" class="center-input"></a></div>
        </div>



        <br><br>
        <div class="center3">
            <ul class="pager">
                <li class="previous" ><a href="#">&larr;上一页</a></li>
                <li class="next"><a href="#">下一页&rarr;</a></li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>