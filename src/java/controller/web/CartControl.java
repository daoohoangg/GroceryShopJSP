/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.web;

import dto.CartDTO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.*;
import org.json.JSONObject;
/**
 *
 * @author daoho
 */
@WebServlet(name="CartControl", urlPatterns={"/add-to-cart"})
public class CartControl extends HttpServlet {
   
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
    private List<CartDTO> cart = new ArrayList<>();
     
    @Override
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        cart.add(new CartDTO(id, name, price, quantity));

        // Tạo HTML giỏ hàng mới
        StringBuilder cartHtml = new StringBuilder();
        double total = 0;
        for (CartDTO item : cart) {
            cartHtml.append("<li class='list-group-item d-flex justify-content-between'>")
                    .append("<div><h6 class='my-0'>" + item.getName() + "</h6></div>")
                    .append("<span>$" + (item.getPrice() * item.getQuantity()) + "</span></li>");
            total += item.getPrice() * item.getQuantity();
        }

        JSONObject jsonResponse = new JSONObject();
        jsonResponse.put("cartHtml", cartHtml.toString());
        jsonResponse.put("cartTotal", total);

        response.setContentType("application/json");
        response.getWriter().write(jsonResponse.toString());
        
        request.setAttribute("listC", cart);
        request.getRequestDispatcher("Home.jsp").forward(request, response);  
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
