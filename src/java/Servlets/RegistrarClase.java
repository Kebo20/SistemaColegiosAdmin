/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controladores.ClaseJpaController;
import Entidades.Ano;
import Entidades.Clase;
import Entidades.Curso;
import Entidades.Profesor;
import Entidades.Seccion;
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
public class RegistrarClase extends HttpServlet {

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
             int idcurso = Integer.parseInt(request.getParameter("idcurso"));
            int idprofesor = Integer.parseInt(request.getParameter("idprofesor"));
            int idseccion = Integer.parseInt(request.getParameter("idseccion"));
            int idaño = Integer.parseInt(request.getParameter("idano"));
            
            Curso c = new Curso();
            c.setId(idcurso);
            Profesor p = new Profesor();
            p.setId(idprofesor);
           
            Seccion s = new Seccion();
            s.setId(idseccion);
            
            Ano a =new Ano();
            a.setId(idaño);
            
            Clase cl = new Clase();
            cl.setIdcurso(c);
            cl.setIdprofesor(p);
            cl.setIdseccion(s);
            cl.setIdano(a);
            
            ClaseJpaController cc = new ClaseJpaController();
            
            try {
                cc.create(cl);
                out.println("Registrado correctamente");
            } catch (Exception ex) {
                out.println("No se pudo registrar");
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
