<%-- 
    Document   : admin_update3
    Created on : 6 Jul 2022, 4:20:52 pm
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@page import="java.sql.*" %>
<%
    if(request.getParameter("submit")!=null)
    {
    String title=request.getParameter("username");
    String author=request.getParameter("author");
    String year=request.getParameter("year");
    
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc://mysql://localhost/mydb","root","root");
    pst=con.prepareStatement("insert into book(title, author, year) values (?,?,?)");
    pst.setString(1, title);
    pst.setString(2, author);
    pst.setString(3, year);
    pst.executeUpdate();
    
    %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Update page</title>
    </head>
    <body>
        <div class="row">
            <div class="col-sm-4">
                <form method="post" action="">
                    <div alight="left"><!-- comment -->
                        <label class="form-label">Title</label>
                        <input type="text" class="form-control" placeholder="title" name="title" id="title" required><!-- comment -->
                        <div><!-- comment -->
                         <div alight="left"><!-- comment -->
                        <label class="form-label">Author</label>
                        <input type="text" class="form-control" placeholder="author" name="author" id="author" required><!-- comment -->
                        <div><!-- comment -->    
                           <div alight="left"><!-- comment -->
                        <label class="form-label">Year</label>
                        <input type="text" class="form-control" placeholder="year" name="year" id="year" required><!-- comment -->
                        <div><!-- comment -->  
                            
                            <div alight="right"><!-- comment -->
                                <input type="submit" id="submit" value="submit" name="submit">
                                <input type="reset" id="reset" value="reset" name="reset">
                                <div>
                </form>
            </div>
                                <div class="col-sm-8"><!-- comment -->
                                    <div class="panel-body">
                                    <table id="book_table" class="table table-responsive table-bordered" cellpadding="0" width="100%";
                                           <table>
                                        <tr>
                                            <th>Title</th>
                                            <th>Author</th><!-- comment -->
                                            <th>Year</th>
                                            <th>Edit</th><!-- comment -->
                                            <th>Delete</th>
                                        </tr>
<% 
                                          //  Connection con;
                                       // PreparedStatement pst;
                                       // ResultSet rs;
                                        
 Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc://mysql://localhost/mydb","root","root");
 
String query ="select * from book";
Statement st=con.createStatement();

rs=st.executeQuery(query);
while (rs.next())
{String id=rs.getString("id");
%>
                                        <tr>
                                            <td><%=rs.getString("title")%></td>
                                            <td><%=rs.getString("author")%></td><!-- comment -->
                                            <td><%=rs.getString("year")%></td><!-- comment -->
                                            <td><a href="update3.jsp?id=<%=id%>">Edit</a></td>
                                            <td></td>
                                        </tr>
                                    </table>
    </body>
</html>
