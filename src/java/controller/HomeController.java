/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.ArrayList;
import java.util.List;
import model.Conectar;
import model.Persona;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;

/**
 *
 * @author jairo
 */

public class HomeController {
   
    private JdbcTemplate jdbcTemplate;
    public HomeController(){
        Conectar conectar = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(conectar.conectar());
        
    }
    //Estructura de la vista Home
    @RequestMapping("home.htm")
    public ModelAndView persona(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("home");
        return mav;
    }       
    //Se consiguen los datos de PERSONA por consulta sql : "select * from tbl_persona
    @ModelAttribute("datosPersona")
    public List<Persona> datosPersona(){
        List<Persona> listaPersona = new ArrayList<Persona>();
        String sql = "select * from tbl_persona";
        listaPersona = jdbcTemplate.query(sql,new PersonaMapper());
        return listaPersona;
    }
}
