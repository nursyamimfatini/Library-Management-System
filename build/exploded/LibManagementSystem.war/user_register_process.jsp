<%-- 
    Document   : user_register
    Created on : 2 Jul 2022, 12:16:11 am
    Author     : USER
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Page</title>
        <style>
            body
            {
                background-image: url("image/paper.jpg");
                
            }
             th{
                width: 170px;
            }
            
            td{
                text-align: center;
            }
        </style>
    </head>
    
    <body>
        <%
        try{
            //load driver
            Class.forName("com.mysql.jdbc.Driver");
            out.println("Driver loaded!");
            
            //create connection
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
            out.println("Connection created!");
            
            Statement statement = con.createStatement();
            
            PreparedStatement preS = con.prepareStatement("insert into user(ic, username, email, password) values( ?, ?, ?, ?)");
            
            //assign value to respective column
            preS.setString(1, request.getParameter("ic"));
            preS.setString(2, request.getParameter("username"));
            preS.setString(3, request.getParameter("email"));
            preS.setString(4, request.getParameter("password"));
            
            
            //execute SQL
            preS.executeUpdate();
            %>
            <br/><p>Data successfully inserted!</p>
            <%
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
        
        <sql:query var="listOrg" dataSource="${x}">
            SELECT * 
            FROM   user;
        </sql:query>
            
        
        <table border="1" cellpadding="5">         
            <!-- table header -->
            <caption>
                <h2>USER REGISTRATION DETAILS</h2>
            </caption>
                    
            <!-- header -->
            <tr>
                <th>IC</th>
                <th>USERNAME</th>
                <th>EMAIL</th>
                <th>PASSWORD</th>
                
            </tr>
                    
            <c:forEach var="reg" items="${listOrg.rows}">
                <tr>
                    <td> <c:out value="${reg.ic}" /> </td>
                    <td> <c:out value="${reg.username}" /> </td>
                    <td> <c:out value="${reg.email}" /> </td>
                    <td> <c:out value="${reg.password}" /> </td>
                  
                </tr>
            </c:forEach>
        </table>
    </body>
</html>