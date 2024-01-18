<%-- 
    Document   : search_book
    Created on : 25 Jun 2022, 1:33:19 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Search book Page</title>
        <style>
            body{
                background-image: url("image/paper.jpg");
            }
            

            
            .group{
                display: flex;
                line-height: 28px;
                align-items: center;
                position: relative;
                max-width: 190px;
                margin: auto;
            }
            .input {
            width: 100%;
 height: 40px;
 line-height: 28px;
 padding: 0 1rem;
 padding-left: 2.5rem;
 border: 2px solid transparent;
 border-radius: 8px;
 outline: none;
 background-color: #f3f3f4;
 color: #0d0c22;
 transition: .3s ease;
}

.input::placeholder {
 color: #9e9ea7;
}

.input:focus, input:hover {
 outline: none;
 border-color: rgba(234,76,137,0.4);
 background-color: #fff;
}

.icon {
 position: absolute;
 left: 1rem;
 width: 1rem;
 height: 1rem;
}
.btn {
 position: relative;
 font-size: 14px;
 text-transform: uppercase;
 text-decoration: none;
 padding: 1em 1.5em;
 display: inline-block;
 border-radius: 2em;
 transition: all .2s;
 border: none;
 font-family: inherit;
 font-weight: 500;
 color: black;
 background-color: white;
 margin-left: 700px;
}

.btn:hover {
 transform: translateY(-3px);
 box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
}

.btn:active {
 transform: translateY(-1px);
 box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}

.btn::after {
 content: "";
 display: inline-block;
 height: 100%;
 width: 100%;
 border-radius: 100px;
 position: absolute;
 top: 0;
 left: 0;
 z-index: -1;
 transition: all .4s;
}

.btn::after {
 background-color: #fff;
}

.btn:hover::after {
 transform: scaleX(1.4) scaleY(1.6);
 opacity: 0;
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
 box-shadow: 0px 14px 56px -11px #1875FF;
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

        </style>
    </head>
    <body>
        <div class="nine"><b>
                <h1>SEARCH BOOK<span>SF Library</span></h1></b>
</div>
            
            <form action="bookSearch-process.jsp">
            
                <%--<input type="text" name="title" placeholder="Search Book by title">--%>
                <div class="group">
  <svg class="icon" aria-hidden="true" viewBox="0 0 24 24"><g><path d="M21.53 20.47l-3.66-3.66C19.195 15.24 20 13.214 20 11c0-4.97-4.03-9-9-9s-9 4.03-9 9 4.03 9 9 9c2.215 0 4.24-.804 5.808-2.13l3.66 3.66c.147.146.34.22.53.22s.385-.073.53-.22c.295-.293.295-.767.002-1.06zM3.5 11c0-4.135 3.365-7.5 7.5-7.5s7.5 3.365 7.5 7.5-3.365 7.5-7.5 7.5-7.5-3.365-7.5-7.5z"></path></g></svg>
  <input placeholder="Search by the Title" type="search" class="input" name="title">
                </div><br>
            <button class="btn">search</button><br><br>
                </center>
        </form>
                <br><br>
    <center>
        <a href="user_menu.html"><button class="button" style="vertical-align:middle"><span>BACK</span></button></a>
        <a href="/LibManagementSystem/"><button class="button" style="vertical-align:middle"><span>LOG OUT</span></button></a>
        </center>
       
    </body>
</html>
