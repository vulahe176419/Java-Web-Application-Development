/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.DAOOrder;
import model.DAOUser;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import entity.Order;
import entity.User;
import jakarta.servlet.annotation.WebServlet;

@WebServlet(name = "ManagerOrder", urlPatterns = {"/ManagerOrderURL"})
public class ManagerOrder extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
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
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String uid = request.getParameter("uid") == null ? "" : request.getParameter("uid");
            String fdate = request.getParameter("fdate") == null ? "1920-05-05" : request.getParameter("fdate");
            String tdate = request.getParameter("tdate") == null ? "3020-05-05" : request.getParameter("tdate");
            DAOOrder odao = new DAOOrder();
            HttpSession session = request.getSession();
            Object object = session.getAttribute("account");
            User u = (User) object;
            ArrayList<Order> ol = odao.getAllOrder(uid, fdate, tdate);
            DAOUser udao = new DAOUser();
            ArrayList<User> userList = udao.getAllUser();
            request.setAttribute("ul", userList);
            request.setAttribute("ol", ol);
            request.getRequestDispatcher("/jsp/managerOrder.jsp").forward(request, response);
        } catch (Exception e) {
            response.getWriter().print(e);
        }
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
