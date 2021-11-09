<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Artur
  Date: 08.11.2021
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="arturz.springjspblog.models.Post" %>
<!DOCTYPE HTML>
<head>
    <meta charset="UTF-8">
    <title>Добавить новость</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<header>
    <jsp:include page="header.jsp"/>
</header>
<div class="container mt-5 mb-5">
    <h1>Добавить новость</h1>
    <form action="/blog/add" method="post">
        <input type="text" name="title" placeholder="Введите название статьи" class="form-control"><br>
        <input type="text" name="anons" placeholder="Введите анонс статьи" class="form-control"><br>
        <textarea name="fullText" placeholder="Введите полный текст статьи" class="form-control"></textarea><br>
        <button type="submit" class="btn btn-success">Добавить статью</button>
    </form>

</div>
<footer class="text-muted">
    <div class="container">
        <jsp:include page="footer.jsp"/>
    </div>
</footer>
</body>
