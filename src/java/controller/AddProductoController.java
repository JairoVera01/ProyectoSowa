/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import model.Conectar;
import model.Productos;
import model.ProductoValidar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
/**
 *
 * @author jairo
 */
@Controller
@RequestMapping("addProducto.htm")
public class AddProductoController {
    private JdbcTemplate jdbcTemplate;
    private ProductoValidar productoValidar;
    
        public AddProductoController(){
        Conectar conectar = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(conectar.conectar());
        this.productoValidar = new ProductoValidar();
        
    }
    //AVANZAR DESDE ESTE PUNTO -------------------
    //Peticion de datos
    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView addProduto(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("addProducto");
        mav.addObject("productos",new Productos());
        return mav;
    }
    
    //Estructura de persona
    @ModelAttribute("productos")
    public Productos productos(){
        Productos productos = new Productos();
        return productos;
    }
    
    //Peticion de datos Persona
    
    
    
    
}
