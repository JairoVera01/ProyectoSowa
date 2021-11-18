/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import model.Conectar;
import model.Persona;
import model.PersonaValidar;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
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
public class EditController {
    private JdbcTemplate jdbcTemplate;
    PersonaValidar personaValidar;
    
    public EditController(){
        this.personaValidar = new PersonaValidar();
        Conectar conectar = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(conectar.conectar());
    }
    
    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView form(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        int id=Integer.parseInt(request.getParameter("id"));
        Persona datos = this.selectPersona(id);
        //devuelve en un objeto de la clase Persona los datos del registro cuyo id
        //hay elegido el usuario para editar
        mav.setViewName("edit");
        mav.addObject("persona", new Persona(id,datos.getNombre(),datos.gettipo_restaurante(),datos.getCorreo(),datos.getTelefono(),datos.getResumen_cv(),datos.getUrl_imagen()));
        return mav;
    }

    @ModelAttribute("persona")
    public Persona datosPersonas(HttpServletRequest request){
        Persona personaSeleccionada = new Persona();
        int id = Integer.parseInt(request.getParameter("id"));
        personaSeleccionada = selectPersona(id);
        return personaSeleccionada;
    }
    
    private Persona selectPersona(int id) {
        //devuelve en un objeto persona los valores correspondientes al registro
        //cuyo id se pasa como parámetro
        final Persona persona = new Persona();
        String sql = "select * from tbl_socios where id='" + id + "'";
                    // select * from tbl_persona where id = '14'
        return (Persona) jdbcTemplate.query(sql,new ResultSetExtractor<Persona>(){
           public Persona extractData(ResultSet rs) throws SQLException, 
                   DataAccessException{
               if(rs.next()){
                   persona.setNombre(rs.getString("nombre"));
                   persona.settipo_restaurante(rs.getString("tipo_restaurante"));
                   persona.setCorreo(rs.getString("correo"));
                   persona.setTelefono(rs.getString("telefono"));
                   persona.setResumen_cv(rs.getString("resumen_cv"));
                   persona.setUrl_imagen(rs.getString("url_imagen"));
               }
            return persona;
           }
        });
    }
    
    @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form(@ModelAttribute("persona") Persona persona,
            BindingResult result, SessionStatus status,HttpServletRequest request){
        this.personaValidar.validate(persona,result);
        if(result.hasErrors()){
            ModelAndView mav = new ModelAndView();
            int id = Integer.parseInt(request.getParameter("id"));
            Persona datos = this.selectPersona(id);
            mav.setViewName("edit");
            mav.addObject("persona", new Persona(id,datos.getNombre(),datos.gettipo_restaurante(),datos.getCorreo(),datos.getTelefono(),datos.getResumen_cv(),datos.getUrl_imagen()));
            return mav;
        }else{
            int id=Integer.parseInt(request.getParameter("id"));
            this.jdbcTemplate.update("update tbl_socios set nombre=?,tipo_restaurante=?,correo=?,telefono=?,resumen_cv=?,url_imagen=?"
                    + "where id=?",persona.getNombre(), persona.gettipo_restaurante(),persona.getCorreo(),persona.getTelefono(),persona.getResumen_cv(),persona.getUrl_imagen(), id);
            return new ModelAndView("redirect:/listar.htm");
        }
    }
    
}

