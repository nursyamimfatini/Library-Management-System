<%-- 
    Document   : bookUpdate2-process
    Created on : 6 Jul 2022, 1:07:55 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="book" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/mydb"
                           user="root" password="root"/>
        
        <core: set var="listbook" value="2"/>
        <sql:update dataSource="${book}" var="bookvar">
        UPDATE book SET title=?, year=? WHERE author=?
        <sql:param value="${listbook}"/>
        
        </sql:update>
    </body>
</html>
