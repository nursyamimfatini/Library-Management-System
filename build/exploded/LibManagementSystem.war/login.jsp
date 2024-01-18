<%-- 
    Document   : login
    Created on : 21 Jun 2022, 10:04:09 pm
    Author     : USER
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
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
            .cssbuttons-io-button {
 background: #A370F0;
 color: white;
 font-family: inherit;
 padding: 0.35em;
 padding-left: 1.2em;
 font-size: 17px;
 font-weight: 500;
 border-radius: 0.9em;
 border: none;
 letter-spacing: 0.05em;
 display: flex;
 align-items: center;
 box-shadow: inset 0 0 1.6em -0.6em #714da6;
 overflow: hidden;
 position: relative;
 height: 2.8em;
 padding-right: 3.3em;
}

.cssbuttons-io-button .icon {
 background: white;
 margin-left: 1em;
 position: absolute;
 display: flex;
 align-items: center;
 justify-content: center;
 height: 2.2em;
 width: 2.2em;
 border-radius: 0.7em;
 box-shadow: 0.1em 0.1em 0.6em 0.2em #7b52b9;
 right: 0.3em;
 transition: all 0.3s;
}

.cssbuttons-io-button:hover .icon {
 width: calc(100% - 0.6em);
}

.cssbuttons-io-button .icon svg {
 width: 1.1em;
 transition: transform 0.3s;
 color: #7b52b9;
}

.cssbuttons-io-button:hover .icon svg {
 transform: translateX(0.1em);
}

.cssbuttons-io-button:active .icon {
 transform: scale(0.95);
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
              ResultSet rs=st.executeQuery("select * from user where username='"+username+"' and password='"+password+"'");
              try{
                    rs.next();
                    if (rs.getString("password").equals(password)&&rs.getString("username").equals(username))
                    {
                    out.println("Welcome,   "  +username);
                    
                    %>
                    <div class="h1">
    <center><p>PLEASE CLICK HERE!</p>
        <form action="user_menu.html">
       <button class="cssbuttons-io-button"> Get started
  <div class="icon"></a>
    <svg height="24" width="24" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path d="M0 0h24v24H0z" fill="none"></path><path d="M16.172 11l-5.364-5.364 1.414-1.414L20 12l-7.778 7.778-1.414-1.414L16.172 13H4v-2z" fill="currentColor"></path></svg>
  </div>
</button></form>
        
                    <%
                    }
                    else
                    {
                    out.println("Invalid password or username.");
                     }
                     }
              catch (Exception e){
              e.printStackTrace();
              }
              %>
              
                     

    </body>
</html>
