<%-- 
    Document   : shoppingList
    Created on : Feb 18, 2022, 9:44:14 PM
    Author     : 744941
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Shopping List</h1>

        <p>Hello, ${name} <a href='register'>Logout</a></p> 

        <h2>List</h2>

        <form action="shoppingList" method="post">
            <input type="hidden" name="action" value="add">

            <label for="item">Add Item:</label>
            <input type ="text" name="item" id="item">

            <button type="submit">Add</button>

        </form>
        <form action="shoppingList" method="post"> 
            <input type="hidden" name="action" value="delete">
            <c:forEach items="${items}" var="items">
                <p>
                    <input type="radio" name="item" value="${items}"> 
                    ${items}</p>
                </c:forEach>

            <button type="submit">Delete</button> 


        </form>
    </body>
</html>
