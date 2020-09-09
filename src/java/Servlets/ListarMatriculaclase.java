/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controladores.MatriculaclaseJpaController;
import Entidades.Matriculaclase;
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
public class ListarMatriculaclase extends HttpServlet {

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
            
            MatriculaclaseJpaController cc = new MatriculaclaseJpaController();
            
            List<Matriculaclase> list = cc.listarxmatricula(Integer.parseInt(request.getParameter("matricula")));
            
            for (int i = 0; i < list.size(); i++) {
                JsonObject j = new JsonObject();
               j.addProperty("clase", list.get(i).getIdclase().getIdcurso().getNombre()+" - "+list.get(i).getIdclase().getIdseccion().getIdgrado().getNombre()+" "+list.get(i).getIdclase().getIdseccion().getNombre()+" ("+list.get(i).getIdclase().getIdano().getDescripcion()+")");
               j.addProperty("profesor", list.get(i).getIdclase().getIdprofesor().getNombre()+" "+list.get(i).getIdclase().getIdprofesor().getApPaterno()+" "+list.get(i).getIdclase().getIdprofesor().getApMaterno() );
              j.addProperty("eliminar", "<a class='btn' onclick=\"eliminarMatriculaclase(" + list.get(i).getId() + ")\"><i class='fa fa-close text-danger'></i></a>");

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
