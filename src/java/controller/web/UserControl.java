/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.web;

import dao.ProductDAO;
import dao.UserDAO;
import entity.Category;
import entity.Product;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.ArrayList;

/**
 *
 * @author daoho
 */
@WebServlet(name = "UserControl", urlPatterns = {"/management-user"})
public class UserControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private final UserDAO userDAO = new UserDAO();
    private List<User> limitedUsers = new ArrayList<>();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String uID = request.getParameter("uid");
            String uName = request.getParameter("uname");
            String timesStr = request.getParameter("times");
            String action = request.getParameter("action");
                
            int times = 8;
            if (timesStr != null && !timesStr.isEmpty()) {
                times = Integer.parseInt(timesStr);
            }

            List<User> listU = userDAO.getAllAccount();
            List<User> listUByName = (uName != null && !uName.isEmpty())
                    ? userDAO.searchUserByName(uName)
                    : listU;

            if ("delete".equals(action)) {
                int uid = Integer.parseInt(uID);
                limitedUsers = deleteUserById(request, response, listU, listUByName, times,action, uid)
                        .stream()
                        .limit(times)
                        .toList();
            } else {
                limitedUsers = listUByName.stream()
                        .limit(times)
                        .toList();
            }

            request.setAttribute("listU", limitedUsers);
            request.getRequestDispatcher("UserManagement.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Lỗi xử lý yêu cầu.");
        }
    }

    private List<User> deleteUserById(HttpServletRequest request, HttpServletResponse response,
            List<User> listU, List<User> listUByName, int times, String action, int uID)
            throws ServletException, IOException {
//        String action = request.getParameter("action");
//        int uID = Integer.parseInt(request.getParameter("uid"));

        if ("delete".equals(action)) {
//            System.out.println("Request action: " + request.getParameter("action"));
//            System.out.println("Request uid: " + request.getParameter("uid"));
            userDAO.deleteAccount(uID);
            listU = userDAO.getAllAccount();
            listUByName = (listUByName != null && !listUByName.isEmpty())
                    ? listUByName
                    : listU;

            limitedUsers = listUByName.stream()
                    .limit(times)
                    .toList();
            response.setStatus(HttpServletResponse.SC_OK);
            return limitedUsers;
        } else {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            return null;
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
