<%-- 
    Document   : admin_menu
    Created on : 25 Jun 2022, 9:31:17 pm
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Admin menu Page</title>
        <style>
            body{
                background-image: url("image/library2.jpg");
            }
            .buttony{
                border-radius:  15px;
                color: black;
                padding: 35px 35px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 15px;
                cursor: pointer;
                margin-bottom: 50px;
                margin-left: 50px;
                margin-top: 50px;
                margin-right: 150px;
                
            }
            .button1{
                background-color: plum;
                box-shadow: 0 8px 16px 0;
            }
            .button2{
                background-color:plum;
                box-shadow: 0 8px 16px 0;
            }
            .button3{
                background-color: plum;
                box-shadow: 0 8px 16px 0;
            }
            .button4{
                background-color: plum;
                box-shadow: 0 8px 16px 0;
            }
            .h1{
                font-size: 50px;
            }
            .seven h1 {
text-align: center;
    font-size:60px; font-weight:300; color:#222; letter-spacing:1px;
    text-transform: uppercase;background-color: white; height: 25px;

    display: grid;
    grid-template-columns: 1fr max-content 1fr;
    grid-template-rows: 27px 0;
    grid-gap: 20px;
    align-items: center;
}

.seven h1:after,.seven h1:before {
    content: " ";
    display: block;
    border-bottom: 1px solid #c50000;
    border-top: 1px solid #c50000;
    height: 5px;
  background-color:blueviolet;
}

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
        <div class="seven"><h1>ADMIN MENU</h1></div>
        
        
<a href="admin_view.jsp"><button class="buttony button1">View User</button></a>
<a href="admin_update2.jsp"><button class="buttony button2">Update Book</button></a>
        <a href="admin_add.jsp"><button class="buttony button3">Add Book</button></a>
        <a href="admin_delete.jsp"><button class="buttony button4">Delete Book</button></a>
        
        <br>
        <br>
         <center>
        <a href="/LibManagementSystem/"><button class="button" style="vertical-align:middle"><span>BACK</span></button></a>
        <a href="log_out.jsp"><button class="button" style="vertical-align:middle"><span>LOG OUT</span></button></a>
        </center>  
        
    </body>
</html>
