<%-- 
    Document   : adminLogin-process
    Created on : 5 Jul 2022, 12:39:45 am
    Author     : USER
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Login Page</title>
        <style>
            body{
                background-image: url("image/paper.jpg");
            }
            .h1{
                font-size: 40px;
            }
            </style>
    </head>
    <body>
          <% 
              String username=request.getParameter("username");
              String password=request.getParameter("password");
              
              //database
              Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root");
              Statement st=con.createStatement();
              ResultSet rs=st.executeQuery("select * from admin where username='"+username+"' and password='"+password+"'");
              try{
                    rs.next();
                    if (rs.getString("password").equals(password)&&rs.getString("username").equals(username))
                    {
                    out.println("Welcome,   "  +username);
                    
                    %>
                    <div class="h1">
    <center><p>Please click Here!</p>
        <a href="admin_menu.jsp"><button>MENU</button></a></center></div>
                    <%
                    }
                    else{
                    out.println("Invalid password or username.");
              }
              
              }
              catch (Exception e){
              e.printStackTrace();
              }
              %>
              
                     

    </body>
</html>
