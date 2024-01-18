<%-- 
    Document   : welcome
    Created on : 4 Jul 2022, 9:05:16 pm
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Welcome Page</title>
        <style>
            
            body{
                background-image: url("image/paper.jpg");
                
            }
            .title{
                font-size: 40px;
                
            }
             button {
  padding: 1.3em 3em;
  font-size: 12px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #000;
  background-color: #fff;
  border: none;
  border-radius: 45px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
}

button:hover {
  background-color: #AE8CFA;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);
}

button:active {
  transform: translateY(-1px);
}
.h2{
                margin: auto;
                width: 200px;
                border: 2px black;
                padding: 5% 5%;
                background-color: white;
                border-radius: 10px;
                font-size: 17px;
        </style>
    </head>
    <body>
    <center><h1>Welcome!</h1></center>

            <jsp:useBean id="register" class="com.library.model.Reg" >
    <jsp:setProperty name="register" property="ic" value="${param.ic}"/>
    <jsp:setProperty name="register" property="first_name" value="${param.first_name}"/>
    <jsp:setProperty name="register" property="last_name" value="${param.last_name}"/>
    <jsp:setProperty name="register" property="username" value="${param.username}"/>
    <jsp:setProperty name="register" property="email" value="${param.email}"/>
    <jsp:setProperty name="register" property="password" value="${param.password}"/>
</jsp:useBean>
       
    <div class="title">
        <center>DETAILS ABOUT USER REGISTRATION</center></div>
    <center><div class="h2">   
        <p>
            IC NUMBER:
            <jsp:getProperty name="register" property="ic"/>
        </p>
        <p>
            FIRST NAME:
            <jsp:getProperty name="register" property="first_name"/>
        </p>
        <p>
            LAST NAME:
            <jsp:getProperty name="register" property="last_name"/>
        </p>
        <p>
            USERNAME:
            <jsp:getProperty name="register" property="username"/>
        </p>
        <p>
            EMAIL:
            <jsp:getProperty name="register" property="email" />
        </p></center> </div> 
        <br><br>  
        <center> PLEASE CLICK HERE TO <a href="login.html"><button>LOGIN</button></a></center>
             
    </body>
</html>
