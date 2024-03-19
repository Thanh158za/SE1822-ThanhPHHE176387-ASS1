/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CategoryDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author ThanhPham
 */
@WebServlet(name = "SortDescController", urlPatterns = {"/sortdesc"})
public class SortDescController extends HttpServlet {

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
        ProductDAO dao = new ProductDAO();
        List<Product> list = dao.getProductDesc();
        CategoryDAO Cdao = new CategoryDAO();
        List<Category> listC = Cdao.getAllCategory();
        List<Product> newList = dao.getNewProduct();
//        request.setAttribute("newList", newList);
//        request.setAttribute("listC", listC);
//        request.setAttribute("list", list);
//        request.getRequestDispatcher("shop.jsp").forward(request, response);
        int productsPerPage = 12;
        int totalProducts = list.size();
        int totalPages = (int) Math.ceil((double) totalProducts / productsPerPage);

        // Lấy tham số trang từ URL hoặc mặc định là trang đầu tiên
        int page = 1;
        String pageParam = request.getParameter("page");
        if (pageParam != null) {
            page = Integer.parseInt(pageParam);
        }

        // Tính toán vị trí bắt đầu và kết thúc của danh sách sản phẩm trang hiện tại
        int start = (page - 1) * productsPerPage;
        int end = Math.min(start + productsPerPage, totalProducts);
        List<Product> paginatedList = list.subList(start, end);

        request.setAttribute("list", paginatedList);
        request.setAttribute("listC", listC);
        request.setAttribute("newList", newList);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPages", totalPages);

        request.getRequestDispatcher("shop.jsp").forward(request, response);
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
