
package configuaraciones;
import java.sql.*;
import java.util.ArrayList;

public class conexion_consulta {
    static Connection conexion=null;
    static Statement sentencia;
    static ResultSet resultado;
    public static void conectar(){
        String ruta="jdbc:mysql://localhost/banco_sena";
        String user="root";
        String pass="";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion=DriverManager.getConnection("jdbc:mysql://localhost/banco_sena", "root", ""); 
            sentencia= conexion.createStatement();
          
        } catch (Exception e) {
         
        }
    }
    public static ArrayList<String> datos(){
        ArrayList<String> lista = new ArrayList<String>();
        String q = "SELECT * FROM tipo_cuenta";
        try {
            resultado = sentencia.executeQuery(q);
           
        } catch (Exception e) {
           
        }
        try {
            while(resultado.next()){
                lista.add(resultado.getString("id_tpc"));
            }
        } catch (Exception e) {
        }
        return lista;
    }
}
