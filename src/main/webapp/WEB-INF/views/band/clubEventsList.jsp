<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pawel
  Date: 17.08.2022
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Concerts Manager</title>
</head>
<body>
Wydarzenia w klubie ${club.name}:<br>

<c:forEach var="event" items="${clubEvents}">
    Nazwa: ${event.name} <br>

    Opis:  ${event.description}  <br>
    Data: ${event.date} <br>
    Zespoły: <br>
    <c:forEach var="band" items="${event.bands}">
        ${band.name} <a href="/band/banddetails/${band.id}">Szczegóły</a><br>

    </c:forEach><br>

    <a href="/bandjoin/${event.id}">Dołącz do wydarzenia</a> <br>

</c:forEach><br>
</body>
</html>