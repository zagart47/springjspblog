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
    <title>Мой блог</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<header>
    <jsp:include page="header.jsp"/>
</header>
<div class="container mt-5">
    <div class="alert alert-info mt-2">
        <% ArrayList<Post> res = (ArrayList<Post>) request.getAttribute("post");
            for (Post post: res) {
                String title = post.getTitle();
                String fullText = post.getFullText();
                int views = post.getViews();
                long id = post.getId();%>
                <h3><%=title%></h3>
                <h6><%=fullText%></h6>
                <h7>Просмотров: <%=views%></h7><br><br>
        <a href="/blog/<%=id%>/edit" class="btn btn-warning">Редактировать</a><br><br>
        <form action="/blog/<%=id%>/remove" method="post">
            <button class="btn btn-warning" type="submit">Удалить</button>
        </form>
        <%} %>
    </div>
</div>
<footer class="text-muted">
    <div class="container">
        <jsp:include page="footer.jsp"/>
    </div>
</footer>
</body>
