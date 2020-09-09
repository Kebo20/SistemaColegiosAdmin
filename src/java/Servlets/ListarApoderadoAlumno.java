/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controladores.AlumnoapoderadoJpaController;
import Controladores.ApoderadoJpaController;
import Entidades.Alumnoapoderado;
import Entidades.Apoderado;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kevin
 */
public class ListarApoderadoAlumno extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
       
            
             JsonObject json = new JsonObject();
            
            JsonArray ja = new JsonArray();
            
            AlumnoapoderadoJpaController cc = new AlumnoapoderadoJpaController();
            
            List<Alumnoapoderado> list = cc.listarxalumno(Integer.parseInt(request.getParameter("id")));
            
            for (int i = 0; i < list.size(); i++) {
                JsonObject j = new JsonObject();
                j.addProperty("nombre", list.get(i).getIdapoderado().getNombre());
                j.addProperty("paterno", list.get(i).getIdapoderado().getApPaterno());
                j.addProperty("materno", list.get(i).getIdapoderado().getApMaterno());
                j.addProperty("dni", list.get(i).getIdapoderado().getDni());
                j.addProperty("eliminar", "<a class=\"btn \" onclick=\"eliminarApoderado('" + list.get(i).getId()+ "')\"><icon class='fa fa-trash' ></icon></a>");
                ja.add(j);
            }
            json.add("datos", ja);
            out.print(json.toString());
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
