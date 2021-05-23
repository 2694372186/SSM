<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>校园二手市场主页</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/index.css" rel="stylesheet">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</head>
<script>
  var n=1;
  function dakai(){
    for(var i=1;i<=2;i++){
      if(n==i){
        document.getElementById("img"+i).style.display="";
      }else{
        document.getElementById("img"+i).style.display="none";
      }
    }
    if(n==2)
    {
      n=1;
    }else{
      n++;
    }
    setTimeout("dakai();",2000);
  }
</script>
<body onload="dakai();">
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
          <li><a href="#">发布商品</a></li>
        </ul>
      </li>
      <li><a href="#">&nbsp;&nbsp;&nbsp;联系我们&nbsp;&nbsp;&nbsp;</a></li>
      <li><a href="#">&nbsp;&nbsp;&nbsp;登录&nbsp;&nbsp;&nbsp;</a></li>
      <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
    </ul></div>
  <div class="top-2">
    <input type="text" placeholder="请输入要查询物品的信息" class="input-top">
  </div>
  <div class="top-3">
    <a href="#" class="button-top"><span>搜索</span></a>
  </div>

</div>
<!--轮番图-->
<div class="center">

  <!--第一张-->
  <div id="img1"  class="img1" >
    <div class="center-img1" >
      <div  class="center-img1-1">
        <!--此处放文字-->
        <p style="color: white;font-size: 25px;"><br>Apple&nbsp;&nbsp;&nbsp;MacBook&nbsp;&nbsp;&nbsp;Air<br>13.3英寸笔记本电脑</p>
        <p style="font-size: 15px;color: rgb(240, 234, 234);">MacBook&nbsp;&nbsp;配置最高可达8GB的内存，第五代<br>
          Inter&nbsp;&nbsp;Core处理器，Tunderboit2端口，一些列<br>
          强大内置APP，以及满足一天所需的电池使用<br>
          时间。它纤薄、轻巧，却又十分耐用。非常适<br>
          合随身携带.而它的强劲性能，又能帮助你轻松<br>
          应对这种事物！
        </p>
      </div>
    </div>
    <div class="center-img2">
      <div  class="center-img1-2">
        <!--此处放照片-->
        <img src="images/平板电脑.jpg" width="400px" height="300px">
      </div>
    </div>
  </div>
  <!--第二张-->
  <div id="img2"  class="img2">
    <div class="center-img1" >
      <div  class="center-img1-1">
        <!--此处放文字-->
        <p style="color: white;font-size: 25px;"><br>SK-II神仙水&nbsp;&nbsp;&nbsp;230ml精华液</p>
        <p style="font-size: 15px;color: rgb(240, 234, 234);">SK-II神仙水精华液化妆品护肤品套装<br>
          （礼盒内赠洁面+清莹露）街头限定礼盒（白色）<br>
          skiisk2女生新年礼物。<br>
          焕发晶透：焕发肌肤5大维度，强韧体肤细滑度。<br>
          细腻弹滑：滴滴润养，令肌肤润泽柔嫩，保持年轻状态。<br>
          舒适调养：调养皮脂状态，舒缓强韧体肤，调节修护肌肤。
        </p>
      </div>
    </div>

    <div class="center-img2">
      <div  class="center-img2-2">
        <!--此处放照片-->
        <img src="images/神仙水sk.jpg" width="400px" height="300px">
      </div>
    </div>
  </div>
</div>
<!--商品列表-->
<div class="center2">
  <!--商品信息-->
  <div class="center2-1">
    <a href="commodit.html"><div class="center2-1-1"><!--此处放照片--><img src="img/主页苹果手机.jpg" width="120px" height="100px"></div></a>
    <div class="center2-1-2"><!--此处放物品信息-->
      <p style="font-size: 12px;text-align: center;">Apple&nbsp;&nbsp;iphone 12</p><br>
      <p style="font-size: 20px;text-align: center;">￥5499元</p>
    </div>
    <div class="center2-1-3"><a href="#" style="font-size: 13px;color: rgb(136, 135, 135);"><input type="button" value="加入购物车" class="center-input"></a></div>
  </div>
  <div class="center2-1">
    <a href="commodit.html"> <div class="center2-1-1"><!--此处放照片--><img src="img/主页女包.jpg" width="120px" height="100px"></div></a>
    <div class="center2-1-2"><!--此处放物品信息-->
      <p style="font-size: 12px;text-align: center;">ELLE时尚女包</p><br>
      <p style="font-size: 20px;text-align: center;">￥319.0元</p>
    </div>
    <div class="center2-1-3"><a href="#" style="font-size: 13px;color: rgb(136, 135, 135);"><input type="button" value="加入购物车" class="center-input"></a></div>
  </div>
  <div class="center2-1">
    <a href="commodit.html"> <div class="center2-1-1"><!--此处放照片--><img src="img/主页书.jpg" width="120px" height="100px"></div></a>
    <div class="center2-1-2"><!--此处放物品信息-->
      <p style="font-size: 12px;text-align: center;">我的精神家园<br>(王小波)</p>
      <p style="font-size: 20px;text-align: center;">￥40.0元</p>
    </div>
    <div class="center2-1-3"><a href="#" style="font-size: 13px;color: rgb(136, 135, 135);"><input type="button" value="加入购物车" class="center-input"></a></div>
  </div>
  <div class="center2-1">
    <a href="commodit.html"><div class="center2-1-1"><!--此处放照片--><img src="img/主页收纳盒.jpg" width="120px" height="100px"></div></a>
    <div class="center2-1-2"><!--此处放物品信息-->
      <p style="font-size: 12px;text-align: center;">TENMA收纳盒</p><br>
      <p style="font-size: 20px;text-align: center;">￥79.0元</p>
    </div>
    <div class="center2-1-3"><a href="#" style="font-size: 13px;color: rgb(136, 135, 135);"><input type="button" value="加入购物车" class="center-input"></a></div>
  </div>
  <div class="center2-1">
    <a href="commodit.html"><div class="center2-1-1"><!--此处放照片--><img src="img/主页女装.jpg" width="120px" height="100px"></div></a>
    <div class="center2-1-2"><!--此处放物品信息-->
      <p style="font-size: 12px;text-align: center;">uti尤缇2020年秋长袖T恤</p>
      <p style="font-size: 20px;text-align: center;">￥288.0元</p>
    </div>
    <div class="center2-1-3"><a href="#" style="font-size: 13px;color: rgb(136, 135, 135);"><input type="button" value="加入购物车" class="center-input"></a></div>
  </div>
</div>
<!--底部-->
<div class="bottom">
  <div class="bottom-1">
    <p style="font-size:22px;text-align: center;font-weight: 800;line-height: 80px;">关于我们</p>
    <p style="font-size: 15px;color: gray;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该网站成立于2021年,是xx高校最大的校内二手交易网站。拥有2000万注册用户和10万注册企业和合作伙伴。日常在线活动用户约90万。
      交易金额最大可达1亿/日。</p>
  </div>
  <div class="bottom-1">
    <p style="font-size:22px;text-align: center;font-weight: 800;line-height: 80px;">团队信息</p>
    <p style="font-size: 15px;color: gray;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该网站由xx和xx协力完成。有入职意向的求职者可以主动向负责人提交求职简介，并将求职简介发送</p>
  </div>
  <div class="bottom-1">
    <p style="font-size:22px;text-align: center;font-weight: 800;line-height: 80px;">版权声明</p>
    <p style="font-size: 15px;color: gray;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本网站社区发布的所有信息，都视为发布者同意本网站免费予以使用；同时本网站认为其发布的信息有侵权、违法等行为的，有权予以修改、删除或通知发布者予以纠正的权利，发布者不得阻止或拒绝。</p>
  </div>

</div>

<div style="width: 78%;height: 30px;background-color: rgb(122, 180, 168);position: relative;margin-left: 185px;margin-top: 20px;border-radius: 15px;">
  <p style="text-align: center;position: relative;margin-top: 10px;">Copyright@2021.Company name All rights reserved</p>
</div>
</body>
</html>
