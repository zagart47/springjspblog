<%--
  Created by IntelliJ IDEA.
  User: Artur
  Date: 08.11.2021
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<head>
    <meta charset="UTF-8">
    <title>Главная страница</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<header>
    <jsp:include page="blocks/header.jsp"/>
</header>
<div class="container mt-5">
    <h1>Добро пожаловать!</h1>
    <h2>Здесь можно оставлять свои новости и заметки.</h2>
</div>
<footer class="text-muted">
    <div class="container">
        <p class="float-right"></p>
        <jsp:include page="blocks/footer.jsp"/>
    </div>
</footer>
</body>
