<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : bookUpdate-process
    Created on : 4 Jul 2022, 11:59:39 pm
    Author     : USER
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
                background-image: url("image/paper.jpg");
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
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
        <%! String driverName="com.mysql.jdbc.Driver";%>
        <%! String url="jdbc:mysql://localhost:3306/mydb";%>
        <%! String user="root";%>
        <%! String password="root";%>
    </head>
    <body>
        <%
            String id=request.getParameter("id");
            String title=request.getParameter("title");
            String author=request.getParameter("author");
            String year=request.getParameter("year");
            String genre=request.getParameter("genre");
            String publisher=request.getParameter("publisher");
            if (id!=null)
            {
            Connection con=null;
            PreparedStatement ps=null;
            //int personID=Integer.parseInt(id);
            
            try{
            Class.forName(driverName);
            con=DriverManager.getConnection(url, user, password);
            String sql="update book set id=?, title=?, author=?, year=?, genre=?, publisher=? where id="+id;
            ps=con.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, title);
            ps.setString(3, author);
            ps.setString(4, year);
            ps.setString(5, genre);
            ps.setString(6, publisher);
            
            int i=ps.executeUpdate();
            if(i>0)
            {
            out.print("Book Update Successfully");
            }
            else{
            out.print("There is a problem in updating record.");
            }
            }
            catch (SQLException sql){
            request.setAttribute("error", sql);
            out.println(sql);
            }
            }
        %>
        <sql:setDataSource var="y"
                           driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/mydb"
                           user="root"
                           password="root"
                           />
        
       
            <sql:query var="listBook" dataSource="${y}">
                SELECT * FROM book;
            </sql:query>

            <center><table border="1" cellpadding="5">         
            <!-- table header -->
            <div class="nine"><b>
                <h1>UPDATE BOOK<span>SUCCESSFULLY UPDATE BOOK</span></h1></b>
            
                            
                    
            <!-- header -->
            <tr>
                <th>ID</th>
                <th>TITLE</th>
                <th>AUTHOR</th>
                <th>YEAR</th>
                <th>GENRE</th>
                <th>PUBLISHER</th>
                
                
            </tr>
                     <c:forEach var="row" items="${listBook.rows}">
                <tr>
                    <td><c:out value="${row.id}"/></td>
                    <td> <c:out value="${row.title}" /> </td>
                    <td> <c:out value="${row.author}" /> </td>
                    <td> <c:out value="${row.year}" /> </td>
                    <td> <c:out value="${row.genre}" /> </td>
                    <td> <c:out value="${row.publisher}" /> </td>
                </tr>
            </c:forEach>
                     </table>
                </table>
                </center>
            <br>
            
            <center><a href="admin_menu.jsp"><button class="button" style="vertical-align:middle"><span>MENU</span></button></a></center>
                
    
    </body>
</html>
