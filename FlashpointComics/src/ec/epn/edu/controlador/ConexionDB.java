package ec.epn.edu.controlador;

import java.sql.DriverManager;

public class ConexionDB {

	public static void main(String [] args) throws Exception{
		Class.forName("org.postgresql.Driver");
		DriverManager.getConnection("jdbc:postgresql://localhost:5432/","postgres","alexanderdj1");
		System.out.print("Comprobaci�n de conexi�n correcta!");
	}
}
