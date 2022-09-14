package br.com.bibliotecamagica.model;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
private static final String USERNAME = "root";
	
	private static final String PASSWORD = "v";
	
	private static final String URL_DATABASE = "jdbc:mysql://localhost:3306/BibliotecaMagica";
	
	public static Connection createConnectionToMySQL() throws Exception, ClassNotFoundException {
        //Class.forName("com.mysql.jdbc.Driver");
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection(URL_DATABASE, USERNAME,PASSWORD);
        return connection;
    }
}
