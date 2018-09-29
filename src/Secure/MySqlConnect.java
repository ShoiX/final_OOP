/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Secure;
import java.sql.*;
/**
 *
 * @author Reginald
 */
public class MySqlConnect {
    public Connection conn;
    public Statement stmt = null;
    public MySqlConnect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrer", "root", "");
            //return conn;
        }catch(Exception e) {
            System.out.println(e);
            //return null;
        }
    }
    public ResultSet query(String q){
        ResultSet rs = null;
       
        try{
            stmt = conn.createStatement();
            String query = q;
            rs = stmt.executeQuery(query);
            
        }
        catch (SQLException ex) {
            while (ex != null) {
                System.out.println("SQL Exception: " + ex.getMessage());
                ex = ex.getNextException();
            }
        }
        catch (NullPointerException x){
            System.out.println(x.toString());
        }
        return rs;
    }
    
    public void close(){
        try{
            conn.close();
            stmt.close();
        }catch(SQLException ex){
            
        }
        
    }
    
}
