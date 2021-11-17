
package controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import model.Conectar;
import model.Persona;
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
public class VerController {
    private JdbcTemplate jdbcTemplate;
    //Controaldor VER
    public VerController(){
        Conectar conectar = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(conectar.conectar());                
    }
   
    //Se hace peticion de los datos con GET 
    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView form(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();        
        int id = Integer.parseInt(request.getParameter("id"));
        Persona datos = this.selectPersona(id);
        //Se establece un objeto persona para acceder a los datos
        mav.setViewName("ver");
        mav.addObject("persona",new Persona(id,datos.getNombre(),
        datos.getApellido(),
        datos.getCorreo(),
        datos.getTelefono(),
        datos.getResumen_cv(),
        datos.getUrl_imagen())); 
        return mav;
    }
    //Se estructura el modelo PERSONA
    @ModelAttribute("persona")
    public Persona datosPersona(HttpServletRequest request){
        Persona personaSeleccionada = new Persona();
        int id = Integer.parseInt(request.getParameter("id"));
        personaSeleccionada = selectPersona(id);
        return personaSeleccionada;
    }
    //SETEAMOS LOS DATOSS OBTENIDOS - VER CONTROLLER
    private Persona selectPersona(int id) {
        final Persona persona = new Persona();
        String sql = "select *from tbl_persona where id='"+id+"'";
        return (Persona) jdbcTemplate.query(sql, new ResultSetExtractor<Persona>(){
            public Persona extractData(ResultSet rs) throws SQLException,DataAccessException{
                if(rs.next()){
                    persona.setNombre(rs.getString("nombre"));
                    persona.setApellido(rs.getString("apellido"));
                    persona.setCorreo(rs.getString("correo"));
                    persona.setTelefono(rs.getString("telefono"));
                    persona.setResumen_cv(rs.getString("resumen_cv"));
                    persona.setUrl_imagen(rs.getString("url_imagen"));
                }
                return persona;
            }     
        });        
    }
    
    
    
    
    
    
}
