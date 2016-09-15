
package Model;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Consultas  {
    
   private String driver;
   private String url;
   private String uss;
   private String contra;
   public Consultas(){
   driver="com.mysql.jdbc.Driver";
   url="jdbc:mysql://localhost:3306/Login";
   uss="root";
   contra="";
    }    
    public int ValidarUsuario(String Nom, String Cla) {
   
           Connection conn ;
           PreparedStatement pst;
           ResultSet rs;
           int IdPerfil = 0;
           String sql = "select IdPerfil from usuarios where Nombres = ?  and  Clave = ?";
           try {
           Class.forName(this.driver);
           conn = (Connection) DriverManager.getConnection(
            this.url,
            this.uss,
            this.contra
           );
            pst = (PreparedStatement) conn.prepareStatement(sql);
            rs= pst.executeQuery();
            while(rs.next()) {
             IdPerfil = rs.getInt(1)  ;
             } 
            conn.close();
           }catch (ClassNotFoundException |SQLException e) {
        
        }
       return IdPerfil;
    }
 

}
      

    
    
  

   
    
    
    
