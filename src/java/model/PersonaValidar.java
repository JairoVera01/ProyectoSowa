
package model;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 *
 * @author jairo
 */
public class PersonaValidar implements Validator{
      @Override
    public boolean supports(Class<?> type) {
        return Persona.class.isAssignableFrom(type);
    }
    @Override
    //Validamos que los campos no esten vacios
    public void validate(Object o, Errors errors){
        Persona persona = (Persona)o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"nombre",
                "required.nombre","ERROR:El campo nombre es obligatorio!!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"apellido",
                "required.apellido","ERROR:El campo apellido es obligatorio!!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"correo",
                "required.correo","ERROR:El campo video es obligatorio!!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"telefono",
                "required.telefono","ERROR:El campo imagen es obligatorio!!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"resumen_cv",
                "required.telefono","ERROR:El campo resumen_cv es obligatorio!!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"url_imagen",
                "required.url_imagen","ERROR:El campo url_imagen es obligatorio!!");     
    }
}
