/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controladores.ClaseJpaController;
import Controladores.MatriculaJpaController;
import Controladores.MatriculaclaseJpaController;
import Entidades.Alumno;
import Entidades.Ano;
import Entidades.Clase;
import Entidades.Matricula;
import Entidades.Matriculaclase;
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
public class RegistrarMatricula extends HttpServlet {

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
           String fecha = request.getParameter("fecha");
            String descripcion = request.getParameter("descripcion");
            int idalumno = Integer.parseInt(request.getParameter("idalumno"));
            int idseccion = Integer.parseInt(request.getParameter("idseccion"));
            int idano = Integer.parseInt(request.getParameter("idano"));
            
            Matricula m = new Matricula();
            m.setFecha(fecha);
            m.setDescripcion(descripcion);
            
            Alumno a = new Alumno();
            a.setId(idalumno);
            
            Seccion s = new Seccion();
            s.setId(idseccion);
            
            Ano ano = new Ano();
            ano.setId(idano);
            
            m.setIdalumno(a);
            m.setIdseccion(s);
            m.setIdano(ano);
            
            MatriculaJpaController mc = new MatriculaJpaController();
            
            try {
                mc.create(m);
                out.print("Registrado correctamente");
            } catch (Exception ex) {
                out.print("No se pudo registrar");
                out.print(ex.toString());
            }
            
            ClaseJpaController cc = new ClaseJpaController();
            
           
            for (Clase c: cc.listarxseccion(idseccion,idano)) {
                MatriculaclaseJpaController  mcc=new MatriculaclaseJpaController();
                
                int id=Integer.parseInt(m.getId().toString()+c.getId().toString());
                mcc.create(new Matriculaclase(id,c,m));
                
                
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
