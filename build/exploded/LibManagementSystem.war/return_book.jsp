<%-- 
    Document   : return_book
    Created on : 25 Jun 2022, 2:10:28 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Return book Page</title>
        <style>
            body{
                background-image: url("image/paper.jpg");
            }
            .title
            {
                font-size: 60px;
                    text-align: center;
            }
            .h1
            {
                font-size: 20px;
                text-align: center;

            }
        </style>
    </head>
    <body>
        <div class="title">
            Return Book
        </div>
        <div class="h1">
            BOOK TITLE
            <input type="text" name="id" placeholder="BOOK TITLE"><!-- comment -->
            Return Date
            <input type="date" name="date" placeholder="dd/mm/yy"><br>
            <br>
            <a href="book_status.jsp"><center><button>Return</button></center><br>
            <a href="user_menu.html"><button>Back</button></a>
            <a href="/LibManagementSystem/"><button>Log out</button></a>
            
        </div>
    </body>
</html>
