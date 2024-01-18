<%-- 
    Document   : admin_login
    Created on : 26 Jun 2022, 12:34:50 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Admin login Page</title>
        <style>
            body{
                background-image: url("image/library2.jpg");
            }
            .title{
                font-size: 50px;
                
            }
            .h1
            {
                margin: auto;
                width: 20%;
                text-align: center;
                padding: 2%;
                background-color: white;
                border-radius: 10px;
                font-size: 20px;
                
            }
             
.thirteen h1 {
  position:relative; font-size:50px; font-weight:700;  letter-spacing:0px; text-transform:uppercase; width:700px; text-align:center; margin:auto; white-space:nowrap; border:2px solid navy; background-color: lavender; padding:5px 11px 3px 11px;
}
.thirteen h1:before, .thirteen h1:after {
    background-color: #c50000;
    position:absolute; 
    content: '';
    height: 7px;

    width: 7px; border-radius:50%;
    bottom: 12px;
}
.thirteen h1:before {
   left:-20px;
}
.thirteen h1:after {
   right:-20px;
} 
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
        </style>
    </head>
    <body>
        <div class="thirteen">
  <h1>ADMIN LOGIN</h1>
</div>
<div class="wrap">
  
</div>
        <form action="admin_login" method="POST">
            <div class="h1">
            <p style="text-align: center" <table>
               <div class="input-group">
                </div>
                 <input required="" type="text" name="username"  class="input" ><label class="user-label">USERNAME</label><br>
                 <br>
                 <input  required="" type="password" name="password"  class="input" ><label class="user-label">PASSWORD</label><br>
                 <br>
                
        <center><button class="button">
  <div class="svg-wrapper-1">
    <div class="svg-wrapper">
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
        <path fill="none" d="M0 0h24v24H0z"></path>
        <path fill="currentColor" d="M1.946 9.315c-.522-.174-.527-.455.01-.634l19.087-6.362c.529-.176.832.12.684.638l-5.454 19.086c-.15.529-.455.547-.679.045L12 14l6-8-8 6-8.054-2.685z"></path>
      </svg>
    </div>
  </div>
  <span>LOGIN</span>
            </button></center></div></form>
        
    </body>
</html>
