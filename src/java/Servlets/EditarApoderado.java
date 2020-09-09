/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Entidades.Apoderado;
import Controladores.ApoderadoJpaController;
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
public class EditarApoderado extends HttpServlet {

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
            String nombre = request.getParameter("nombre");
            String ap_paterno = request.getParameter("ap_paterno");
            String ap_materno = request.getParameter("ap_materno");
            String dni = request.getParameter("dni");
            String fecha_nacimiento = request.getParameter("fecha_nacimiento");
            String direccion = request.getParameter("direccion");
            String telefono = request.getParameter("telefono");
            String correo = request.getParameter("correo");
            String usuario = request.getParameter("usuario");
            String contrasena = request.getParameter("contrasena");
            
            Apoderado a = new Apoderado();
            a.setId(id);
            a.setNombre(nombre);
            a.setApPaterno(ap_paterno);
            a.setApMaterno(ap_materno);
            a.setDni(dni);
            a.setFechaNacimiento(fecha_nacimiento);
            a.setDireccion(direccion);
            a.setTelefono(telefono);
            a.setCorreo(correo);
            a.setUsuario(usuario);
            a.setContraseña(contrasena);
            
            ApoderadoJpaController ac = new ApoderadoJpaController();
            
            try {
                ac.editar(a);
                out.println("Editado correctamente");
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
