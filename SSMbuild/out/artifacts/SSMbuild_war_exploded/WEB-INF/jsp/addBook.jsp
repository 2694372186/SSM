<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--      bootstarp美化界面--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>书籍展示页面</title>
</head>
<body>
<div class="container">

    <div class="clearfix row">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 --- 显示所有书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/addBook" method="post">
        <div class="form-group">
            <label>书籍名称</label>
            <input type="text" class="form-control" name="bookName" required>
        </div>
        <div class="form-group">
            <label>书籍数量</label>
            <input type="text" class="form-control" name="bookCounts" required>
        </div>
        <div class="form-group">
            <label>书籍简介</label>
            <input type="text" class="form-control" name="detail" required>
        </div>
        <input type="submit" value="提交" class="btn btn-primary">
    </form>


</div>
</body>
</html>
