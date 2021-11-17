
package model;

/**
 *
 * @author jairo
 */
public class Persona {
    
    //Se crean los campos segun base de datos 
    private int id;
    private String nombre;
    private String apellido;
    private String correo;
    private String telefono;
    private String resumen_cv;
    private String url_imagen;
    
     //Generamos el constructor y los metodos GET Y SET para acceder a los datos 
    public Persona(){
    }
       public Persona(int id, String nombre, String apellido, String correo, String telefono, String resumen_cv, String url_imagen) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
        this.telefono = telefono;
        this.resumen_cv = resumen_cv;
        this.url_imagen = url_imagen;
    }
       
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getResumen_cv() {
        return resumen_cv;
    }

    public void setResumen_cv(String resumen_cv) {
        this.resumen_cv = resumen_cv;
    }

    public String getUrl_imagen() {
        return url_imagen;
    }

    public void setUrl_imagen(String url_imagen) {
        this.url_imagen = url_imagen;
    } 
}
