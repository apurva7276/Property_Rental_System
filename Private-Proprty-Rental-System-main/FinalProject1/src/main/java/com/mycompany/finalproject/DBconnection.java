/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.finalproject;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Apurva
 */
public class DBconnection {
    
 
   static Connection conn=null;
   static final String DBUrl="jdbc:mysql://localhost:3306/privatepropertyrentalsystemdb";
   static final String username="root";
   static final String pass="root";
   public static Connection connect()
   {
       
    try
      {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn=DriverManager.getConnection(DBUrl, username, pass);
            
      }
    catch(Exception e)
    {
      e.printStackTrace();
    }
    return conn;
   } 
   
    
}
    

