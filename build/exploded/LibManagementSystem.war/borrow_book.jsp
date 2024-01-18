<%-- 
    Document   : borrow_book
    Created on : 7 Jul 2022, 9:53:31 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Borrow Book Page</title>
        <style>
            body{
                background-image: url("image/paper.jpg");
            }
            .title{
                font-size: 60px;
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
<%--INPUT--%>
.input-group {
 position: relative;
 text-align:center;
 align-items: center;
}

.input {
 border: solid 1.5px #9e9e9e;
 border-radius: 1rem;
 background: white;
 padding: 1rem;
 font-size: 1rem;
 color: #242132;
 transition: border 150ms cubic-bezier(0.4,0,0.2,1);
 text-align:center;
 align-items: center;
}

.user-label {
 position: absolute;
 color: #242132;
 left: 670px;
 pointer-events: none;
 transform: translateY(1rem);
 transition: 150ms cubic-bezier(0.4,0,0.2,1);
 text-align:center;
 align-items: center;
 
}

.input:focus, input:valid {
 outline: none;
 border: 1.5px solid #1a73e8;
}

.input:focus ~ label, input:valid ~ label {
 transform: translateY(-50%) scale(0.8);
 background-color: #FEFCFF;
 padding: 0 .2em;
 color: #2196f3;
}
<%--SUBMIT--%>
button {
 font-family: inherit;
 font-size: 15px;
 background: royalblue;
 color: white;
 padding: 0.5em 1em;
 padding-left: 0.9em;
 display: flex;
 align-items: center;
 border: none;
 border-radius: 16px;
 overflow: hidden;
 transition: all 0.2s;
}

button span {
 display: block;
 margin-left: 0.3em;
 transition: all 0.3s ease-in-out;
}

button svg {
 display: block;
 transform-origin: center center;
 transition: transform 0.3s ease-in-out;
}

button:hover .svg-wrapper {
 animation: fly-1 0.6s ease-in-out infinite alternate;
}

button:hover svg {
 transform: translateX(1.2em) rotate(45deg) scale(1.1);
}

button:hover span {
 transform: translateX(5em);
}

button:active {
 transform: scale(0.95);
}

@keyframes fly-1 {
 from {
  transform: translateY(0.1em);
 }

 to {
  transform: translateY(-0.1em);
 }
}
.button1 {
 display: inline-block;
 border-radius: 7px;
 border: none;
 background: #746CFE;
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

.button1 span {
 cursor: pointer;
 display: inline-block;
 position: relative;
 transition: 0.4s;
}

.button1 span:after {
 content: '';
 position: absolute;
 opacity: 0;
 top: 0;
 right: -20px;
 transition: 0.7s;
}

.button1:hover span{
 padding-right: 3.55em;
}

.button1:hover span:after {
 opacity: 4;
 right: 0;
}


        </style>
    </head>
    <body>
        <div class="nine"><b>
                <h1>BORROW BOOK<span>PLEASE INSERT BOOK YOU WANT TO BORROW</span></h1></b>
            <form action="bookBorrow-process.jsp" method="POST">
             <div class="input-group">
                 <input required="" type="text" name="title"  class="input"><label class="user-label">TITLE</label><br>
                 <br>
                 <input  required="" type="text" name="genre"  class="input"><label class="user-label">GENRE</label><br>
                 
                 <P><center>DUE DATE</center><input  type="date" name="date" required="" class="input"></p><br>
</div>
</div>
        
                    
    <center><button class="button">
  <div class="svg-wrapper-1">
    <div class="svg-wrapper">
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
        <path fill="none" d="M0 0h24v24H0z"></path>
        <path fill="currentColor" d="M1.946 9.315c-.522-.174-.527-.455.01-.634l19.087-6.362c.529-.176.832.12.684.638l-5.454 19.086c-.15.529-.455.547-.679.045L12 14l6-8-8 6-8.054-2.685z"></path>
      </svg>
    </div>
  </div>
  <span>SUBMIT</span>
        </button></center></form>
    <br><br>
    <br>
       <center><a href="user_menu.html"><button class="button1" style="vertical-align:middle"><span>BACK</span></button></a></center> 
        
    </body>
</html>

