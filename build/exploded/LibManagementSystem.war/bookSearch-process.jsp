<%-- 
    Document   : bookSearch-process
    Created on : 4 Jul 2022, 4:46:41 pm
    Author     : USER
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>The Details about the book</title>
        <style>
            body
            {
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
    </head>
    <body>
         <div class="nine"><b>
                <h1>SEARCH BOOK<span>ALL THE DETAILS ABOUT THE BOOK</span></h1></b>
</div>
    <center>
        <table  border="1" cellpadding="5"> 
            
            <tr>
                <th>Title</th>
                <th>Author</th>
                <th>Year</th>
                <th>Genre</th>
                <th>Publisher</th>
            </tr>
            <%
                try{
                //establish connection
                Class.forName("com.mysql.jdbc.Driver");
                Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root","root");
                
                Statement st= con.createStatement();
                //get book input from search book
                String title=request.getParameter("title");
                String sqlStr="select * from book where title='"+title+"'";
                ResultSet rs=st.executeQuery(sqlStr);
                while(rs.next()){
                %>
                
                <br><br>
                <tr>
                    <td><%=rs.getString("title")%></td>
                    <td><%=rs.getString("author")%></td>
                    <td><%=rs.getString("year")%></td>
                    <td><%=rs.getString("genre")%></td>
                    <td><%=rs.getString("publisher")%></td>
                </tr>
                
                <% }//while loop complete here 
                
                }catch (Exception e){
                System.out.println(e.getMessage());
                }
            %>
        </table>
        <br>
        
        <br>
        <br><a href="user_menu.html"><button class="button" style="vertical-align:middle"><span>MENU</span></button></a>
    
</html>
