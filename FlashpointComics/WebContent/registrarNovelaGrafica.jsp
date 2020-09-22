<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pantalla 1 CRUD-Create Novela gr�fica</title>
</head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/6.6.6/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
<body>
<ul>
        <li><a href="pantallaInicio.jsp" title="Inicio">Inicio</a></li>
        <li><a href="editarNovelaGrafica.jsp" title="Editar">Editar</a></li>        
        <li><a href="ListarNovelaGrafica" title="Listado de Novelas Gr�ficas">Listado de Novelas Gr�ficas</a></li>        
    </ul>
	

<div class="panel panel-primary" class="panel">
      <div class="panel-heading">REGISTRO DE NOVELAS GR�FICAS</div>
      <div class="panel-body">
 
       
<%! public String obtenerAtributo(HttpServletRequest request, String nombre){
	String valor = (String) request.getAttribute(nombre);
	if(valor == null){
		valor = "";
	}	
	return valor;
} %>


<p><font style="color:red;"><%=obtenerAtributo(request,"valError")%></font></p>
    

<form action = "RegistrarNovelaGrafica">

 <div>
 
 <div class="form-group">
    <label for="titulo">T�tulo</label></br>
    <input type="text" class="form-control" placeholder="Ingrese T�tulo de la Novela Gr�fica: " name="titulo" value="<%=obtenerAtributo(request,"valTitulo")%>"/>        
 </div>
 
  <div class="form-group">
    </br><label for="autor">Autor</label></br>
    <input type="text" class="form-control" placeholder="Ingrese Nombre del autor de la Novela Gr�fica: " name="autor" value="<%=obtenerAtributo(request,"valAutor")%>"/>    
  </div>

<div class="form-group">
    </br><label for="resumen">Resumen</label></br>
    <input type="text" class="form-control" placeholder="Ingrese Resumen de la Novela Gr�fica: " name="resumen" value="<%=obtenerAtributo(request,"valResumen")%>"/>    
  </div>

  <div class="form-group">
    </br><label for="editorial">Editorial</label></br>
    <input type="text" class="form-control" placeholder="Ingrese la Editorial de la Novela Gr�fica: " name="editorial" value="<%=obtenerAtributo(request,"valEditorial")%>"/>    
  </div>
  
  <div class="form-group">
   </br> <label for="idioma">Idioma</label></br>
    <input type="text" class="form-control" placeholder="Ingrese el idioma de la Novela Gr�fica: " name="idioma" value="<%=obtenerAtributo(request,"valIdioma")%>"/>    
  </div>
  
  <div class="form-group">
   </br><label for="anioPubl">A�o de Publicaci�n</label></br>
    <input type="text" class="form-control" placeholder="Ingrese el a�o de publicaci�n de la Novela Gr�fica: " name="anioPubl" value="<%=obtenerAtributo(request,"valAnioPubl")%>"/>    
  </div>
  
  
  <div class="form-group">
    </br><label for="numArch">N�mero de Archivos</label></br>
    <input type="text" class="form-control" placeholder="Ingrese el n�mero de archivos de la Novela Gr�fica: " name="numArch" value="<%=obtenerAtributo(request,"valNumArch")%>"/>    
  </div>
  




<!-- 
<tr>
<td> Resumen:</td>
<td><input type="text" name="resumen" value="<%=obtenerAtributo(request,"valResumen")%>"/></td>
</tr>  

<tr>
<td> Editorial:</td>
<td><input type="text" name="edicion" value="<%=obtenerAtributo(request,"valEdicion")%>"/></td>
</tr>
<tr>
<td> Idioma:</td>
<td><input type="text" name="idioma" value="<%=obtenerAtributo(request,"valIdioma")%>"/></td>
</tr>
<tr>
<td> A�o de publicacion:</td>
<td><input type="text" name="anioPubl" value="<%=obtenerAtributo(request,"valAnioPubl")%>"/></td>
</tr>
<tr>
<td> Cantidad de Archivos:</td>
<td><input type="text" name="numArch" value="<%=obtenerAtributo(request,"valNumArch")%>"/></td>
</tr>-->

 <td><button type="submit" value="Guardar" class="btn btn-primary">Guardar</button></td> 
<!--<input type="submit" value="Guardar"/> -->
</form> 
</div>
</div>


 <h2>Realizar otras actividades!</h2>
    <button class="btn btn-primary"  onclick="location.href='pantallaInicio.jsp'">LL�vame al inicio</button>
	<button class="btn btn-success" onclick="location.href='ListarNovelaGrafica'">Mu�strame</button>
	<button class="btn btn-info" onclick="location.href='editarNovelaGrafica.jsp'">D�jame editar</button>
 
</body>
</html>