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
    <title>Мой блог</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<header>
    <jsp:include page="blocks/header.jsp"/>
</header>
<div class="container mt-5">
    <h1>Мой блог</h1>
    <div class="alert alert-info mt-2"><% Iterable<Post> posts = (Iterable<Post>) request.getAttribute("posts");
        for (Post post: posts) { %>
            <h3> <% out.println(post.getFullText()); %> </h3>
            <p> <% out.println(post.getAnons());%> </p>
            <a href="/blog/<% String link = String.valueOf(post.getId()); out.print(link); %>" class="btn btn-warning">Детальнее</a> <% } %>
    </div>
</div>
<footer class="text-muted">
    <div class="container">
        <jsp:include page="blocks/footer.jsp"/>
    </div>
</footer>
</body>
