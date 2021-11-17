
package model;

/**
 *
 * @author jairo
 */

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Conectar{
   //Metodo para conectarnos a la base de datos , usuario root y contraseña vacia por defecto
    //Base de datos smartor4_staff.sql
  public DriverManagerDataSource conectar(){
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost/smartor4_staff");
        dataSource.setUsername("root");
        dataSource.setPassword("");        
        return dataSource;
    }
}
