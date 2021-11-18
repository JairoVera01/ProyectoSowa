
package controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import model.Productos;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
/**
 *
 * @author jairo
 */
public class ProductoMapper implements RowMapper<Productos> {
    
    public ProductoMapper() {
    }
    @Override
    public Productos mapRow(ResultSet rs, int i) throws SQLException {
        return new Productos(rs.getInt("id"),rs.getString("nombre_socio"),rs.getString("producto"),rs.getFloat("precio"),rs.getString("url_producto"));        
    }
    
}