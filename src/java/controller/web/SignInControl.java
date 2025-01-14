/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.web;

import dao.ProductDAO;
import dao.UserDAO;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.util.List;

/**
 *
 * @author daoho
 */
@WebServlet(name="SignIn", urlPatterns={"/sign-in"})
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
        String username = request.getParameter("usermail");
        String password = request.getParameter("password");
        
        String nameSignUp = request.getParameter("usernameSU");
        String userMailSignUp = request.getParameter("usermailSU");
        String passworSignUp = request.getParameter("passwordSU");
        try {
            //dang nhap
            dao.UserDAO dao = new UserDAO();
            User u = dao.login(username, password);
            if (u != null) {
                request.getRequestDispatcher("Home.jsp").forward(request, response);
            }else
            {
                request.getRequestDispatcher("SignIn.jsp").forward(request, response);
            }       
            //check account toi tai hay chua
            boolean checkExisted = false;
            List<User> list = dao.getAllAccount();
            int i =0 ;
            for (User acc : list) {
                System.out.println(acc);
                if(acc.getUserMail().equalsIgnoreCase(userMailSignUp) 
                        || acc.getUserName().equalsIgnoreCase(nameSignUp)){
                    i++;
                }
            }
            if(i==0){
                checkExisted = true;
            }  
            if(checkExisted){
                dao.createAccount(nameSignUp, userMailSignUp, passworSignUp);
                request.getRequestDispatcher("Home.jsp").forward(request, response);
            }else{
                request.getRequestDispatcher("SignIn.jsp").forward(request, response);
            }
        } catch (Exception e) {
        }
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
