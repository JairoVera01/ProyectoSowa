/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import model.Conectar;
import model.Productos;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
/**
 *
 * @author jairo
 */
public class VerProductosController {
    private JdbcTemplate jdbcTemplate;
    //Controaldor VER
    public VerProductosController(){
        Conectar conectar = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(conectar.conectar());                
    }
   
    //Se hace peticion de los datos con GET 
    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView form(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();        
        int id = Integer.parseInt(request.getParameter("id"));
        Productos datos = this.selectProductos(id);
        //Se establece un objeto persona para acceder a los datos
        mav.setViewName("verProductos");
        mav.addObject("Productos",new Productos(id,datos.getNombre_socio(),datos.getProducto(),datos.getPrecio(),datos.getUrl_producto())); 
        return mav;
    }
    //Se estructura el modelo Producto
    @ModelAttribute("productos")
    public Productos datosProductos(HttpServletRequest request){
        Productos productosSeleccionada = new Productos();
        int id = Integer.parseInt(request.getParameter("id"));
        productosSeleccionada = selectProductos(id);
        return productosSeleccionada;
    }
    //SETEAMOS LOS DATOSS OBTENIDOS - VER CONTROLLER
    private Productos selectProductos(int id) {
        final Productos productos = new Productos();
        String sql = "select *from tbl_socios_producto where id='"+id+"'";
        return (Productos) jdbcTemplate.query(sql, new ResultSetExtractor<Productos>(){
            public Productos extractData(ResultSet rs) throws SQLException,DataAccessException{
                if(rs.next()){
                    productos.setNombre_socio(rs.getString("nombre_socio"));
                    productos.setProducto(rs.getString("producto"));
                    productos.setPrecio(rs.getFloat("precio"));
                    productos.setUrl_producto(rs.getString("url_producto"));
                }
                return productos;
            }     
        });        
    }
    
    
    
    
    
}
