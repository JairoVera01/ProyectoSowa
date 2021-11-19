/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;


import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.Conectar;
import model.Productos;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;
/**
 *
 * @author jairo
 */
public class ListarProductosController {
    
    private JdbcTemplate jdbcTemplate;
       public ListarProductosController(){
       Conectar conectar = new Conectar();
       this.jdbcTemplate = new JdbcTemplate(conectar.conectar());                
    }
    //Estructura de la Vista
    @RequestMapping("listarProductos.htm")
    public ModelAndView listarProductos(){
    ModelAndView mav = new ModelAndView();
    mav.setViewName("listarProductos");
    return mav;
    }
    //Se obtienen los datos de la base de datos por consulta  select * from tbl_persona
    @ModelAttribute("datosProducto")
    public List<Productos> datosProducto(){
    List<Productos> listaProductos = new ArrayList<Productos>();
    String sql = "select * from tbl_socios_producto";
    listaProductos = jdbcTemplate.query(sql,new ProductoMapper());
    return listaProductos;
    }
}
