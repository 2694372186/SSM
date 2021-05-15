
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
<%--      bootstarp美化界面--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>首页</title>
  </head>
  <style>
      a{
          text-decoration: none;
          color: black;
          font-size: 18px;
      }
      h3{
          width: 180px;
          height: 38px;
          margin: 100px auto;
          text-align: center;
          line-height: 38px;
          background: deepskyblue;
          border-radius: 5px;
      }
  </style>
  <body>
 <h3>
   <a href="${pageContext.request.contextPath}/book/allBook">进入书籍页面</a>
 </h3>
  </body>
</html>
