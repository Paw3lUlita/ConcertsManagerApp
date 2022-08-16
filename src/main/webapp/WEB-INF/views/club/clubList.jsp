<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pawel
  Date: 10.08.2022
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Concert Menager</title>
</head>
<body>
Twoje kluby:<br>

<c:forEach var="club" items="${userClubs}">
  ${club.city}  ${club.name}
    <a href="/event/${club.id}">Pokaż wydarzenia</a>
    <a href="/club/edit/${club.id}">Edytuj</a>
    <a href="/club/delete/${club.id}">Usuń</a> <br>
</c:forEach>
...............
<a href="/club/add">Dodaj nowy klub</a>

</body>
</html>