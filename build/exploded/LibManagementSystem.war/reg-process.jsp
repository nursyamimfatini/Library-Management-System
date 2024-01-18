<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : reg-process
    Created on : 21 Jun 2022, 11:20:16 pm
    Author     : USER
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Regisration</title>
        <style>
            body
            {
                background-image: url("image/paper.jpg");
                
            }
        </style>
    </head>
    <body>
    
        <%
            String id=request.getParameter("ic");
            String username=request.getParameter("username");
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
            Statement st=conn.createStatement();
            
            int i=st.executeUpdate("insert into user(ic,username,email,password)values( ?, ?, ?, ?)");
            out.println("Thank you for register! Please <a href='login.html>Login</a>to continue");
            }
            catch(Exception e)
            {
            System.out.print(e);
            e.printStackTrace();
            }
            %>
            
             <sql:setDataSource var="mydb"
                           driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/mydb"
                           user="root"
                           password="root"
                           />
        
    <sql:query var="users" dataSource="mydb">
        SELECT * FROM user;
    </sql:query>
        
            <jsp:useBean id="register" class="com.library.model.Reg" >
    <jsp:setProperty name="register" property="id" value="${param.ic}"/>
    <jsp:setProperty name="register" property="username" value="${param.username}"/>
    <jsp:setProperty name="register" property="email" value="${param.email}"/>
    <jsp:setProperty name="register" property="password" value="${param.password}"/>
</jsp:useBean>
        
    <center> Welcome to user, </center>
    <center>       
        <p>
            USERNAME:
            <jsp:getProperty name="register" property="username"/>
        </p>
        <p>
            EMAIL:
            <jsp:getProperty name="register" property="email" />
        </p></center>
    </body>
</html>
