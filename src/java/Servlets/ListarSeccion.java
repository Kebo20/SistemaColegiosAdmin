/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controladores.SeccionJpaController;
import Entidades.Seccion;
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
public class ListarSeccion extends HttpServlet {

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
            
            SeccionJpaController sc = new SeccionJpaController();
            List<Seccion> list = sc.findSeccionEntities();
            
            for (int i = 0; i < list.size(); i++) {
                JsonObject j = new JsonObject();
                j.addProperty("seccion", list.get(i).getNombre());
                j.addProperty("grado", list.get(i).getIdgrado().getNombre());
                j.addProperty("nivel", list.get(i).getIdgrado().getIdnivel().getTipo());
                j.addProperty("editar", "<a class=\"btn \" onclick=\"editarSeccion('" + list.get(i).getId()+ "','"+list.get(i).getNombre()+"','"+list.get(i).getIdgrado().getId()+"')\"><i class='fa fa-pencil text-inverse m-r-10'></i></a>");
                j.addProperty("eliminar", "<a class=\"btn \" onclick=\"eliminarSeccion('" + list.get(i).getId()+ "')\"><i class='fa fa-close text-danger'></i></a>");
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
