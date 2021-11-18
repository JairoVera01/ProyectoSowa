/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.ArrayList;
import java.util.List;
import model.Conectar;
import model.Productos;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;

/**
 *
 * @author jairo
 */

public class ProductosController {
   
    private JdbcTemplate jdbcTemplate;
    public ProductosController(){
        Conectar conectar = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(conectar.conectar());
        
    }
    //Estructura de la vista Home
    @RequestMapping("productos.htm")
    public ModelAndView productos(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("productos");
        return mav;
    }       
    //Se consiguen los datos de PERSONA por consulta sql : "select * from tbl_persona
    @ModelAttribute("datosPersona")
    public List<Productos> datosProductos(){
        List<Productos> listaProducto = new ArrayList<Productos>();
        String sql = "select * from tbl_socio_productos";
        listaProducto = jdbcTemplate.query(sql,new ProductoMapper());
        return listaProducto;
    }
}