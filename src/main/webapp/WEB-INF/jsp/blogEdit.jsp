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
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE HTML>
<head>
    <meta charset="UTF-8">
    <title>Редактировать статью</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<header>
    <jsp:include page="header.jsp"/>
</header>
<div class="container mt-5 mb-5">
    <h1>Редактировать статью</h1>
    <form method="post">
        <% ArrayList<Post> res = (ArrayList<Post>) request.getAttribute("post");
            for (Post post: res) {
                String title = post.getTitle();
                String fullText = post.getFullText();
                String anons = post.getAnons();
                %>
        <input type="text" value="<%=title%>" name="title" placeholder="Введите название статьи" class="form-control"><br>
        <input type="text" value="<%=anons%>" name="anons" placeholder="Введите анонс статьи" class="form-control"><br>
        <textarea name="fullText" placeholder="Введите полный текст статьи" class="form-control"><%=fullText%></textarea><br>
        <button type="submit" class="btn btn-success">Обновить статью</button>
        <%}%>
    </form>

</div>
<footer class="text-muted">
    <div class="container">
        <jsp:include page="footer.jsp"/>
    </div>
</footer>
</body>
