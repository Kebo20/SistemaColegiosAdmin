/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controladores.PagoJpaController;
import Controladores.PeriodoJpaController;
import Entidades.Pago;
import Entidades.Periodo;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kevin
 */
public class ListarPago extends HttpServlet {

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

            PagoJpaController pc = new PagoJpaController();

            for (Pago p: pc.findPagoEntities()) {
                JsonObject j = new JsonObject();
                j.addProperty("comprobante", p.getNumeroComprobante());
                j.addProperty("fecha", p.getFecha());
                j.addProperty("total",p.getTotal());
                j.addProperty("alumno",p.getIdalumno().getNombre()+" "+p.getIdalumno().getApMaterno()+" "+p.getIdalumno().getApMaterno());
 
                j.addProperty("detalle", "<a  class='btn' href='detalle-pago.jsp?comprobante="+p.getNumeroComprobante()+"&fecha="+p.getFecha()+"&alumno="+p.getIdalumno().getNombre()+" "+p.getIdalumno().getApPaterno()+" "+p.getIdalumno().getApPaterno()+"&total="+p.getTotal()+"&pago="+p.getId()+"'><i class='fa fa-eye text-inverse m-r-10'></i></a>");
                j.addProperty("editar", "<a  class='btn' onclick=\"editarPago('" +  p.getId()+ "','"+p.getNumeroComprobante()+"'"+p.getFecha()+"','"+p.getIdalumno().getId()+"'\"><i class='fa fa-pencil text-inverse m-r-10'></i></a>");
                j.addProperty("eliminar", "<a class='btn' onclick=\"eliminarPago(" + p.getId()+ ")\"><i class='fa fa-close text-danger'></i></a>");

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
