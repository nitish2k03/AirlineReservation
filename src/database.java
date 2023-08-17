
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class database {
    public static Connection myCon(){
        Connection con=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/airline","root","root");
        }catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
        return con;
    }
}
