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
    <title>О проекте</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<header>
    <jsp:include page="header.jsp"/>
</header>
<div class="container mt-5">
    <h4>Стек применяемых технологий:</h4>
    <h5>SpringBoot 2.5</h5>
    <h5>JSP</h5>
    <h5>PostgreSQL</h5>
</div>
<footer class="text-muted">
    <div class="container">
        <p class="float-right"></p>
        <jsp:include page="footer.jsp"/>
    </div>
</footer>
</body>
