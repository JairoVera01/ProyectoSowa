
package model;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 *
 * @author jairo
 */
public class PersonaValidar implements Validator{
    
    private static final String EMAIL_PATTERN="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    private Pattern pattern;
    private Matcher matcher;
    
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
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"tipo_restaurante",
                "required.apellido","ERROR:El campo tipo_restaurante es obligatorio!!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"correo",
                "required.correo","ERROR:El campo video es obligatorio!!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"telefono",
                "required.telefono","ERROR:El campo imagen es obligatorio!!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"resumen_cv",
                "required.telefono","ERROR:El campo resumen_cv es obligatorio!!");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"url_imagen",
                "required.url_imagen","ERROR:El campo url_imagen es obligatorio!!");   
        
        /*Validacion para formato de correo*/
        if(!(persona.getCorreo()!=null && persona.getCorreo().isEmpty())){
            this.pattern = Pattern.compile(EMAIL_PATTERN);
            this.matcher = pattern.matcher(persona.getCorreo());
            if(!matcher.matches()){
                errors.rejectValue("correo", "correo.incorrect","ERROR: El correo no es válido!!!");
            }
        }
    }
}
