/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.Conectar;
import model.Persona;
import model.PersonaValidar;
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
@RequestMapping("add.htm")
public class AddController {
    private JdbcTemplate jdbcTemplate;
    private PersonaValidar personaValidar;
    
        public AddController(){
        Conectar conectar = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(conectar.conectar());
        this.personaValidar = new PersonaValidar();
        
    }
    //Peticion de datos
    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView add(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("add");
        mav.addObject("persona",new Persona());
        return mav;
    }
    
    //Estructura de persona
    @ModelAttribute("persona")
    public Persona persona(){
        Persona persona = new Persona();
        return persona;
    }
    
    //Peticion de datos Persona
    @RequestMapping(method=RequestMethod.POST)
    public ModelAndView add(@ModelAttribute("persona") Persona persona,
        BindingResult result, SessionStatus status){    
        this.personaValidar.validate(persona, result);
        if(result.hasErrors()){
            ModelAndView mav = new ModelAndView();
            mav.setViewName("add");
            mav.addObject("persona",new Persona());
            return mav;
        }else{
            this.jdbcTemplate.update("insert into tbl_socios(nombre,tipo_restaurante"
                +",correo,telefono,resumen_cv,url_imagen) values(?,?,?,?,?,?)",
                    persona.getNombre(),persona.gettipo_restaurante(),
                    persona.getCorreo(),persona.getTelefono(),
                    persona.getResumen_cv(), persona.getUrl_imagen());
            return new ModelAndView("redirect://home.htm");
        }
    }
    
    
    
}
