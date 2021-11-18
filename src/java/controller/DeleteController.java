/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import javax.servlet.http.HttpServletRequest;
import model.Conectar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
/**
 *
 * @author jairo
 */
public class DeleteController {
    private JdbcTemplate jdbcTemplate;
    
    public DeleteController(){
        Conectar conectar = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(conectar.conectar());
    }
    
    @RequestMapping("delete.htm")
    public ModelAndView persona(HttpServletRequest request){
        int id = Integer.parseInt(request.getParameter("id"));
        this.jdbcTemplate.update("delete from tbl_socios where id=?",id);
        return new ModelAndView ("redirect:/listar.htm");
    }
    
}