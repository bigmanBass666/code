<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
    <body>
        <h2>Hello World!</h2>
		<%
			System.out.println("index...");
		%>

        <%
            int a = 5;
            request.setAttribute("a","4");
            session.setAttribute("a","6");
        %>  
        <c:out value="${a}"/>

    </body>
</html>
