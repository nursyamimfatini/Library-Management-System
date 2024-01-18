/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.library.controller;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
public class register extends HttpServlet {
    private static final long serialVersionUID=1L;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
          
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        
        String ic=request.getParameter("ic");
        String first_name=request.getParameter("first_name");
        String last_name=request.getParameter("last_name");
        String username=request.getParameter("username");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        
        try{
            //load driver
            Class.forName("com.mysql.jdbc.Driver");
            
            
            //create connection
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
            
            PreparedStatement ps=con.prepareStatement("insert into user values (?,?,?,?,?,?)");
            
            ps.setString(1, ic);
            ps.setString(2, first_name);
            ps.setString(3, last_name);
            ps.setString(4, username);
            ps.setString(5, email);
            ps.setString(6, password);
            
            int i=ps.executeUpdate();
            if (i>0)
                out.print("You are successfully registered");
                RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
                rd.forward(request, response);
        }catch(Exception e){System.out.println(e);}
        
        out.close();
    }
        
    
           /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
