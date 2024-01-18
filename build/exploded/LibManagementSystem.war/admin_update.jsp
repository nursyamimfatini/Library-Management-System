<%-- 
    Document   : admin_update
    Created on : 25 Jun 2022, 10:49:48 pm
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Admin update book Page</title>
        <style>
            body{
                background-image: url("image/paper.jpg");
            }
            .title{
                font-size: 40px;
            }
            
        </style>
    </head>
    <body>
        <div class="title">
            <center>Update Book</center><br>
        </div>
    <center>Please insert book details below</center>
        <form action="bookUpdate-process.jsp" method="POST">
 
            <p style="text-align: center" >
        
     
        <br><tr>
                    <td>UPDATE TITLE &nbsp;&nbsp;&nbsp;  :</td>
                    <td><input type="text" name="title" ></td><br></tr>
        <br><tr>
                    <td>UPDATE AUTHOR  : </td>
                    <td><input type="text" name="author" ></td><br></tr>
        <br><tr>
                    <td>UPDATE YEAR &nbsp; &nbsp;  : </td>
                    <td><input type="text" name="year" ></td><br></tr>
        </p>

        <p style="text-align: center"><input type="submit" value="SUBMIT"></p>
         </form>        
    
    <center><a href="admin_menu.jsp" > <button>Back</button></center>
    </body>
</html>
