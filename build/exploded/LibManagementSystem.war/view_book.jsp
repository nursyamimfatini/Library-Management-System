<%-- 
    Document   : view_book
    Created on : 24 Jun 2022, 10:37:04 pm
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
        
        <title>View Book</title>
        
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
            
            PreparedStatement preS = con.prepareStatement("insert into book(title, author, year, genre, publisher) values(?, ?, ?, ?, ?)");
            
            //assign value to respective column
            preS.setString(1, request.getParameter("title"));
            preS.setString(2, request.getParameter("author"));
            preS.setString(3, request.getParameter("year"));
            preS.setString(4, request.getParameter("genre"));
            preS.setString(5, request.getParameter("publisher"));
            
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
        
        <sql:query var="listBook" dataSource="${x}">
            SELECT * 
            FROM   book;
        </sql:query>
            
        
            <center><table border="1" cellpadding="5">         
            <!-- table header -->
            <div class="nine"><b>
                <h1>VIEW BOOKS<span>BOOK LIST AND DETAILS</span></h1></b>
                    
            <!-- header -->
            <tr>
                <th>Title</th>
                <th>Author</th>
                <th>Year</th>
                <th>Genre</th>
                <th>Publisher</th>
                
            </tr>
                    
            <c:forEach var="books" items="${listBook.rows}">
                <tr>
                    <td> <c:out value="${books.title}" /> </td>
                    <td> <c:out value="${books.author}" /> </td>
                    <td> <c:out value="${books.year}" /> </td>
                    <td> <c:out value="${books.genre}" /> </td>
                    <td> <c:out value="${books.publisher}" /> </td>
                    
                </tr>
            </c:forEach>
                </table>
                </center>
            <br>
            <center><a href="user_menu.html"><button class="button" style="vertical-align:middle"><span>MENU</span></button></a></center>
            
    </body>
</html