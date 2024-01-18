<%-- 
    Document   : log_out
    Created on : 12 Jul 2022, 12:44:16 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Logged out Page</title>
        <style>
            body{
                background-image: url(image/library.jpg);
            }
            .center
            {
                margin-top: 120px;
                margin-bottom: 50px;
                
                width: 20%;
                border: 2px black;
                text-align: center;
                padding: 3%;
                background-color: white;
                border-radius: 10px;
                font-size: 20px;
                vertical-align: middle;
                
                
            }
            button {
            margin-left: 45%;
            
            text-decoration: none;
            position: absolute;
            border: none;
            font-size: 14px;
            font-family: inherit;
            color: #fff;
            width: 9em;
            height: 3em;
            line-height: 2em;
            text-align: center;
            background: linear-gradient(90deg,#03a9f4,#f441a5,#ffeb3b,#03a9f4);
            background-size: 300%;
            border-radius: 30px;
            z-index: 1;
            }

            button:hover {
            animation: ani 8s linear infinite;
            border: none;
            }

            @keyframes ani {
            0% {
            background-position: 0%;
            }

            100% {
            background-position: 400%;
            }
            }

            button:before {
            content: '';
            position: absolute;
            top: -5px;
            left: -5px;
            right: -5px;
            bottom: -5px;
            z-index: -1;
            background: linear-gradient(90deg,#03a9f4,#f441a5,#ffeb3b,#03a9f4);
            background-size: 400%;
            border-radius: 35px;
            transition: 1s;
            }

            button:hover::before {
            filter: blur(20px);
            }

            button:active {
            background: linear-gradient(32deg,#03a9f4,#f441a5,#ffeb3b,#03a9f4);
             }
        </style>
    </head>
    <body>
    <center><div class="center">You are now logged out.
        Thank you and have a great day!</div></center>
        
        <br><br>
        
        <a href="/LibManagementSystem/"><button>HOME</button></a>
    </body>
</html>
