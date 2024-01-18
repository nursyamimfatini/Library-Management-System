<%-- 
    Document   : admin_view
    Created on : 25 Jun 2022, 10:15:52 pm
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<%@page import="java.sql.*"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        
        <title>View user</title>
        
        <style type="text/css">
            body{
                background-image: url("image/paper.jpg");;
            }

             table {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
  text-align: center;
  
}
table td, table th {
  border: 1px solid #ddd;
  padding: 8px;
}

table tr:nth-child(even){background-color: white;}
table tr:nth-child(odd){background-color: lavender;}

table tr:hover {background-color: #ddd;}

table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #746CFE;
  color: white;
  text-align: center;
}
<%--TITLE--%>
.nine h1 {
  text-align:center; font-size:60px; text-transform:uppercase; color:#222; letter-spacing:1px;
  font-family:"Playfair Display", serif; font-weight:400;
}
.nine h1 span {
  margin-top: 5px;
    font-size:15px; color:#444; word-spacing:1px; font-weight:normal; letter-spacing:2px;
    text-transform: uppercase; font-family:"Raleway", sans-serif; font-weight:500;

    display: grid;
    grid-template-columns: 1fr max-content 1fr;
    grid-template-rows: 27px 0;
    grid-gap: 20px;
    align-items: center;
}

.nine h1 span:after,.nine h1 span:before {
    content: " ";
    display: block;
    border-bottom: 1px solid #ccc;
    border-top: 1px solid #ccc;
    height: 5px;
  background-color:#746CFE;
}
<%--BUTTON--%>
.button {
 display: inline-block;
 border-radius: 7px;
 border: none;
 background: #746CFE;
 color: white;
 font-family: inherit;
 text-align: center;
 font-size: 13px;
 box-shadow: 0px 10px 40px -11px #1875FF;
 width: 10em;
 padding: 1em;
 transition: all 0.4s;
 cursor: pointer;
}

.button span {
 cursor: pointer;
 display: inline-block;
 position: relative;
 transition: 0.4s;
}

.button span:after {
 content: '';
 position: absolute;
 opacity: 0;
 top: 0;
 right: -20px;
 transition: 0.7s;
}

.button:hover span {
 padding-right: 3.55em;
}

.button:hover span:after {
 opacity: 4;
 right: 0;
}

        </style>
    </head>
    
    <body>
        <%
        try{
            //load driver
            Class.forName("com.mysql.jdbc.Driver");
            
            
            //create connection
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
            
            
            Statement statement = con.createStatement();
            
            PreparedStatement preS = con.prepareStatement("insert into user(ic, first_name, last_name, username, email) values(?, ?, ?, ?, ?)");
            
            //assign value to respective column
            preS.setString(1, request.getParameter("ic"));
            preS.setString(2, request.getParameter("first_name"));
            preS.setString(3, request.getParameter("last_name"));
            preS.setString(4, request.getParameter("username"));
            preS.setString(5, request.getParameter("email"));
            
            
            //execute SQL
            preS.executeUpdate();
            
            //close object
            preS.close();
            con.close();
            
        }//close try
        catch(Exception e){
            System.out.println(e.getMessage());
        }//close catch
        %>
        
        <br/>
        
        <sql:setDataSource var="x"
                           driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/mydb"
                           user="root"
                           password="root"
                           />
        
        <sql:query var="listUser" dataSource="${x}">
            SELECT * 
            FROM   user;
        </sql:query>
            
        <div class="nine"><b>
                <h1>VIEW USERS<span>USER DETAILS</span></h1></b>
            <center>
                <table>         
            <!-- table header -->        
            <!-- header -->
            <tr>
                <th>IC NUMBER</th>
                <th>FIRST NAME</th>
                <th>LAST NAME</th>
                <th>USERNAME</th>
                <th>EMAIL</th>
                
            </tr>
                    
            <c:forEach var="user" items="${listUser.rows}">
                <tr>
                    <td> <c:out value="${user.ic}" /> </td>
                    <td> <c:out value="${user.first_name}" /> </td>
                    <td> <c:out value="${user.last_name}" /> </td>
                    <td> <c:out value="${user.username}" /> </td>
                    <td> <c:out value="${user.email}" /> </td>
                    
                </tr>
            </c:forEach>
                </table>
                </center>
            <br><br>
            <center><a href="admin_menu.jsp"><button class="button" style="vertical-align:middle"><span>BACK</span></button></a></center>
            
    </body>
</html