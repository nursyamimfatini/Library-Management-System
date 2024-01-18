<%-- 
    Document   : update
    Created on : 4 Jul 2022, 11:42:28 pm
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
        <style>
            body{
                background-image: url("image/paper.jpg");
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
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>update Page</title>
    </head>
        <%
            String id=request.getParameter("id");
            String driver="com.mysql.jdbc.Driver";
            String connectionUrl="jdbc:mysql://localhost:3306/mydb";
            String databasae="mydb";
            String userid="root";
            String password="root";
            
            try{
            Class.forName(driver);
                }catch(ClassNotFoundException e){
                e.printStackTrace();
                }
                Connection connection=null;
                Statement statement=null;
                ResultSet resultSet=null;
        %>
        <%
            try{
                connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root");
                statement=connection.createStatement();
                String sql="select * from book where id="+id;
                resultSet=statement.executeQuery(sql);
                while(resultSet.next()){
         %>
            
            
         <body><center>
        <div class="nine"><b>
                <h1>UPDATE BOOK<span>PLEASE UPDATE THE BOOK</span></h1></b>
            
            
        <form method="post" action="bookUpdate-process.jsp">
            <div class="input-group">
                <input type="hidden" name="id" value="<%=resultSet.getString("id")%>">
                 <input required="" type="text" name="title"  class="input" value="<%=resultSet.getString("title")%>"><label class="user-label">TITLE</label><br>
                 <br>
                 <input  required="" type="text" name="author"  class="input" value="<%=resultSet.getString("author")%>"><label class="user-label">AUTHOR</label><br>
                 <br>
                 <input  required="" type="text" name="year"  class="input" value="<%=resultSet.getString("year")%>"><label class="user-label">YEAR</label><br>
                 <br>
                 <input  required="" type="text" name="genre"  class="input" value="<%=resultSet.getString("genre")%>"><label class="user-label">GENRE</label><br>
                 <br>
                 <input  required="" type="text" name="publisher"  class="input" value="<%=resultSet.getString("publisher")%>"><label class="user-label">PUBLISHER</label><br>
                 <br>
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
            
            
            <%
                }
                connection.close();
                }catch(Exception e){
                e.printStackTrace();
                }
            %>
            
            
         </center></body>
</html>
