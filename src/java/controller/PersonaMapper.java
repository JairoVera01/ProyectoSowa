
package controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import model.Persona;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
/**
 *
 * @author jairo
 */
public class PersonaMapper implements RowMapper<Persona> {
    //DATOS PERSONA
    public PersonaMapper() {
    }
    @Override
    public Persona mapRow(ResultSet rs, int i) throws SQLException {
        return new Persona(rs.getInt("id"),
        rs.getString("nombre"), rs.getString("apellido"),
        rs.getString("correo"), rs.getString("telefono"),
        rs.getString("resumen_cv"), rs.getString("url_imagen"));        
    }
    
}
