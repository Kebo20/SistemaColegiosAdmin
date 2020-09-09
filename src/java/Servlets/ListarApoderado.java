/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controladores.ApoderadoJpaController;
import Entidades.Apoderado;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kevin
 */
public class ListarApoderado extends HttpServlet {

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
            
            ApoderadoJpaController ac = new ApoderadoJpaController();
            
            List<Apoderado> list = ac.findApoderadoEntities();
            
            for (int i = 0; i < list.size(); i++) {
                JsonObject j = new JsonObject();
                j.addProperty("nombre", list.get(i).getNombre());
                j.addProperty("ap_paterno", list.get(i).getApPaterno());
                j.addProperty("ap_materno", list.get(i).getApMaterno());
                j.addProperty("dni", list.get(i).getDni());
                j.addProperty("fecha_nacimiento", (list.get(i).getFechaNacimiento()));
                j.addProperty("direccion", list.get(i).getDireccion());
                j.addProperty("telefono", list.get(i).getTelefono());
                j.addProperty("correo", list.get(i).getCorreo());
                j.addProperty("usuario", list.get(i).getUsuario());
                j.addProperty("contrasena", list.get(i).getContraseña());
//                j.addProperty("l", "<a class=\"btn btn-danger\"  href='prueba.jsp?clase="+list.get(i).getDni()+"' \">Editar</a>");
                j.addProperty("editar", "<a class=\"btn \" onclick=\"mostrarEditarApoderado('" + list.get(i).getId()+ "','" + list.get(i).getNombre()+ "','" + list.get(i).getApPaterno()+ "','" + list.get(i).getApMaterno()+ "','" + list.get(i).getDni()+ "','" + (list.get(i).getFechaNacimiento())+ "','" + list.get(i).getDireccion()+ "','" + list.get(i).getTelefono()+ "','" + list.get(i).getCorreo()+ "','" + list.get(i).getUsuario()+ "','" + list.get(i).getContraseña()+ "')\"><i class='fa fa-pencil text-inverse m-r-10'></i></a>");
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
