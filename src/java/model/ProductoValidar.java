/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class ProductoValidar implements Validator{
    @Override
    public boolean supports(Class<?> type) {
        return Productos.class.isAssignableFrom(type);
    }
    @Override
    //Validamos que los campos no esten vacios
    public void validate(Object o, Errors errors){
        Productos productos = (Productos)o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"nombre",
                "required.nombre_socio","ERROR:El campo nombre_socio es obligatorio!!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"tipo_restaurante",
                "required.producto","ERROR:El campo producto es obligatorio!!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"correo",
                "required.precio","ERROR:El campo precio es obligatorio!!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"telefono",
                "required.url_video","ERROR:El campo url_video es obligatorio!!");
          
        
}
}