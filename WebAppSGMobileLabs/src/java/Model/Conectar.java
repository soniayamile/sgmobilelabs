
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.lang.ClassNotFoundException;
import java.net.URLClassLoader;
import Model.Conectar;

public class Conectar {
  
    private Connection con;
    private PreparedStatement consulta;
    private ResultSet datos;
    private String server,user,bd,pass;
    public Conectar(){
        this.server = "localhost";
        this.bd = "sgmobilelabs";
        this.user = "root";
        this.pass = "";
    }
    public void con() throws SQLException{
        try {
            Class.forName("com.mysql.jdbc.Driver"); //jdbc:mysql://localhost/
                  this.con = DriverManager.getConnection("jdbc:mysql://" + this.server + "/" + this.bd,this.user,this.pass);
      
        } catch (Exception e) {
            e.printStackTrace();
        }
    } 
        public void desconectar()throws SQLException
        {
            this.con.close();
           // this.consulta();
        }
        
        public ResultSet getDatos()throws SQLException {
            this.con();
            this.consulta = this.con.prepareStatement("select * from usuarios");
            this.datos=this.consulta.executeQuery();
            return this.datos;
            
        }
}
    
    
 

            
            
    

