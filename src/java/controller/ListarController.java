
package controller;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.Conectar;
import model.Persona;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;

/**
 *
 * @author jairo
 */
public class ListarController {
 
    private JdbcTemplate jdbcTemplate;
       public ListarController(){
       Conectar conectar = new Conectar();
       this.jdbcTemplate = new JdbcTemplate(conectar.conectar());                
    }
    //Estructura de la Vista
    @RequestMapping("listar.htm")
    public ModelAndView listar(){
    ModelAndView mav = new ModelAndView();
    mav.setViewName("listar");
    return mav;
    }
    //Se obtienen los datos de la base de datos por consulta  select * from tbl_persona
    @ModelAttribute("datosPersona")
    public List<Persona> datosPersona(){
    List<Persona> listaPersona = new ArrayList<Persona>();
    String sql = "select * from tbl_persona";
    listaPersona = jdbcTemplate.query(sql,new PersonaMapper());
    return listaPersona;
    }
    
}
