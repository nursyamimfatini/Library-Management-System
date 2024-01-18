<%-- 
    Document   : return
    Created on : 7 Jul 2022, 6:32:16 pm
    Author     : USER
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
                background-image: url("image/paper.jpg");
            }
              <%--TABLE--%>
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
  background-color: #AE8CFA;
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
 background: #AE8CFA;
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
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Success return book Page</title>
    </head>
    <body>
        
        <% String id=request.getParameter("id");
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root");
            Statement st=conn.createStatement();
            String sql="DELETE FROM borrowing WHERE id="+id;
            st.execute(sql);
            out.println("Thank you!");
            conn.close();
                }
                catch(Exception e)
                {
                out.println("Error: "+e.toString());
                }
        %>
       <sql:setDataSource var="z"
                           driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/mydb"
                           user="root"
                           password="root"
                           />
        
        <sql:query var="listBorrowing" dataSource="${z}">
            SELECT * 
            FROM   borrowing;
        </sql:query>
                        <center>
            <div class="nine"><b>
                <h1>RETURN BOOK<span>THANK YOU FOR RETURNING THE BOOK</span></h1></b>
<table border="1" cellpadding="5">         
           
            <tr>
                <th>ID</th>
                <th>TITLE</th>
                <th>GENRE</th>
                <th>DUE DATE</th>
                
            </tr>
                    
            <c:forEach var="borrow" items="${listBorrowing.rows}">
                <tr>
                    <td> <c:out value="${borrow.id}" /> </td>
                    <td> <c:out value="${borrow.title}" /> </td>
                    <td> <c:out value="${borrow.genre}" /> </td>
                    <td> <c:out value="${borrow.date}" /> </td>
        
                </tr>
            </c:forEach>
                </table>
                </center>
            <br>
            <center><a href="user_menu.html"><button class="button" style="vertical-align:middle"><span>MENU</span></button></a></center>
            
                
    
    </body>
</html>
