/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controladores.HorarioJpaController;
import Entidades.Clase;
import Entidades.Horario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kevin
 */
public class EditarHorario extends HttpServlet {

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
             int id = Integer.parseInt(request.getParameter("id"));
            String dia = request.getParameter("dia");
            String hora_inicio = request.getParameter("hora_inicio");
            String hora_fin = request.getParameter("hora_fin");
            String nivel = request.getParameter("nivel");
            int idclase = Integer.parseInt(request.getParameter("idclase"));
            
            Horario h = new Horario();
            h.setId(id);
            h.setDia(dia);
            h.setHoraInicio(hora_inicio);
            h.setHoraFin(hora_fin);
            h.setNivel(nivel);
            
            Clase c = new Clase();
            c.setId(idclase);
            h.setIdclase(c);
            
            HorarioJpaController hc = new HorarioJpaController();
            
            try {
                hc.editar(h);
                out.print("Editado correctamente");
            } catch (Exception ex) {
                out.println("No se pudo editar");
                out.println(ex.toString());
            }
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
