/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controladores.DetallepagoJpaController;
import Controladores.PagoJpaController;
import Controladores.exceptions.IllegalOrphanException;
import Entidades.Alumno;
import Entidades.Detallepago;
import Entidades.Pago;
import Entidades.Tipopago;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kevin
 */
public class RegistrarPago extends HttpServlet {

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

            Alumno a = new Alumno();
            a.setId(Integer.parseInt(request.getParameter("alumno")));
            Pago p = new Pago();
            p.setFecha(request.getParameter("fecha"));
            p.setIdalumno(a);
            p.setNumeroComprobante(request.getParameter("norden"));

            JsonArray ja = new JsonParser().parse(request.getParameter("venta")).getAsJsonArray();

            p.setTotal(Double.valueOf(request.getParameter("total")));

            PagoJpaController pc = new PagoJpaController();
            try {
                pc.create(p);

            } catch (Exception e) {
                out.print(":(");
            }

            int cont = 0;
            for (JsonElement je : ja) {

                DetallepagoJpaController dc = new DetallepagoJpaController();
                cont = cont + 1;
                int id = (Integer.parseInt(request.getParameter("norden") + cont));
                String descripcion = (je.getAsJsonObject().get("descripcion").toString().replaceAll("\"", ""));

                int idtipo = (Integer.parseInt(je.getAsJsonObject().get("idTipo").toString().replaceAll("\"", "")));

                try {
                    dc.create(new Detallepago(id, descripcion, p, new Tipopago(idtipo)));
                } catch (IllegalOrphanException ex) {
                    out.print(":(");
                } catch (Exception ex) {
                    out.print(":(");
                }

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
