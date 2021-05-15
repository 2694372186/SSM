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
        <div class="row">
            <div class="col-md-4 column">
                <a href="${pageContext.request.contextPath}/book/toAddBookPaper" class="btn btn-primary">添加书籍</a>
                <a href="${pageContext.request.contextPath}/book/allBook" class="btn btn-primary">显示所有书籍</a>
            </div>
            <div class="col-md-4 column"></div>
            <div class="col-md-4 column"   style="float: right;">
                <form action="${pageContext.request.contextPath}/book/queryBookByName" method="post" class="form-inline">
                    <span style="color: red;font-size: 14px;font-family: 华文中宋">${err}</span>
                    <input type="text" class="form-control" name="bookName" placeholder="请输入要查询的书籍名称" required>
                    <input type="submit" value="查询" class="btn btn-primary">
                </form>
            </div>
        </div>
    </div>

    <div class="clearfix row">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>书籍编号</th>
                        <th>书籍名称</th>
                        <th>书籍数量</th>
                        <th>书籍详情</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <%-- 从数据库中拿数据--%>

                <tbody>
                    <c:forEach items="${list}" var="book">
                        <tr>
                            <td>${book.bookID}</td>
                            <td>${book.bookName}</td>
                            <td>${book.bookCounts}</td>
                            <td>${book.detail}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/book/toUpdateBookPaper?id=${book.bookID}" class="btn btn-primary">修改</a>
                                <a href="${pageContext.request.contextPath}/book/deleteBook/${book.bookID}" class="btn btn-primary">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>

            </table>
        </div>
    </div>

</div>
</body>
</html>
