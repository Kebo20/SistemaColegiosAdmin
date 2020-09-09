/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controladores.MatriculaJpaController;
import Entidades.Matricula;
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
public class ListarMatricula extends HttpServlet {

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
            //filtrar por el id de la seccion, el método tiene que estar en la clase, en el registrar clase
            JsonArray ja = new JsonArray();
            
            MatriculaJpaController mc = new MatriculaJpaController();
            
            List<Matricula> list = mc.findMatriculaEntities();
            
            for (int i = 0; i < list.size(); i++) {
                JsonObject j = new JsonObject();
                j.addProperty("fecha", list.get(i).getFecha());
                j.addProperty("descripcion", list.get(i).getDescripcion());                
                j.addProperty("alumno", list.get(i).getIdalumno().getNombre()+" "+list.get(i).getIdalumno().getApPaterno()+" "+list.get(i).getIdalumno().getApMaterno());                
                j.addProperty("seccion", list.get(i).getIdseccion().getNombre()+" - "+list.get(i).getIdseccion().getIdgrado().getNombre()+" "+list.get(i).getIdseccion().getIdgrado().getIdnivel().getTipo());                
                j.addProperty("ano", list.get(i).getIdano().getDescripcion());
                j.addProperty("clases", "<a class=\"btn \" href='matriculaclase.jsp?matricula="+list.get(i).getId()+"'  \"><i class='fa fa-eye'></i></a>");
                //j.addProperty("editar", "<a class=\"btn btn-danger\" onclick=\"editarMatricula('" + list.get(i).getId()+ "','" +list.get(i).getFecha()+ "','" + list.get(i).getDescripcion()+ "','" + list.get(i).getIdalumno().getId()+ "','" + list.get(i).getIdseccion().getId()+ "','" + list.get(i).getIdano().getId()+ "')\">Editar</a>");
                j.addProperty("eliminar", "<a class=\"btn \" onclick=\"eliminarMatricula('" + list.get(i).getId()+ "')\"><i class='fa fa-close text-danger'></i></a>");
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
