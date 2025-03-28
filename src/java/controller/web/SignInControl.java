/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.web;

import dao.UserDAO;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author daoho
 */
@WebServlet(name="SignInControl", urlPatterns={"/sign-in"})
public class SignInControl extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("usermail");
        String password = request.getParameter("password");
        
        dao.UserDAO dao = new UserDAO();
        
        
        HttpSession session = request.getSession();
        try {
//            request.getRequestDispatcher("SignIn.jsp").forward(request, response);
            //dang nhap 
            Account u = dao.login(username, password);
//            System.out.println(u);    
            
//            System.out.println(username);
//            System.out.println(password);
            if (u == null) {
                
                request.setAttribute("mess", "Need fill email and password correctly !");
                request.getRequestDispatcher("SignIn.jsp").forward(request, response);
                
//                request.getRequestDispatcher("home").forward(request, response);
            }else
            {
                session.setAttribute("username", u.getUserName());
                response.sendRedirect("home");
//                response.sendRedirect("sign-in");
//                request.setAttribute("mess", "Need fill email and password correctly !");
//                request.getRequestDispatcher("SignIn.jsp").forward(request, response);
            }       
            
        } catch (Exception e) {
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
