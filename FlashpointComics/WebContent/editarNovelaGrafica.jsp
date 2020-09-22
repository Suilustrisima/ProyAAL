<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pantalla 2 CRUD-Update & Delete Novela gráfica</title>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/fonts/dejavu.css">
</head>
<body>
	<ul>
        <li><a href="pantallaInicio.jsp" title="Inicio">Inicio</a></li>        
        <li><a href="mostrarNovelaGrafica.jsp" title="Contenidos">Contenidos</a></li>
        <li><a href="registrarNovelaGrafica.jsp" title="Registro de Novelas Gráficas">Registro de Novelas Gráficas</a></li>        
    </ul>
    
    <p>Realizar otras actividades!</p>
    <button onclick="location.href='pantallaInicio.jsp'">LLévame al inicio</button>
    <button onclick="location.href='ListarNovelaGrafica'">Muéstrame novelas gráficas</button>
    <button onclick="location.href='registrarNovelaGrafica.jsp'">Déjame registrar novelas gráficas</button>	
		



<%! public String obtenerAtributo(HttpServletRequest request, String nombre){
	String valor = (String) request.getAttribute(nombre);
	if(valor == null){
		valor = "";
	}	
	return valor;
} %>


<p><%=obtenerAtributo(request,"valError")%></p>

 
 
  <h1>REGISTRO DE NOVELAS GRÁFICAS</h1>
  <DIV align=center>  
 
 
    
  <table>
<form action = "ActualizarNovelaGrafica">

<div>

<div class="form-group">
<label for="id"><strong>Id: </strong></label></br>
<input type="text" class="form-control" placeholder="<%=obtenerAtributo(request,"valId")%> --No editable--" name="id"  readonly/>
</div>
 
 
 
 
 <div class="form-group"></br>
    <label for="titulo"><strong>Título: </strong></label></br>
    <input type="text" class="form-control" name="titulo" value="<%=obtenerAtributo(request,"valTitulo")%>"/>        
 </div>
 
 
  <div class="form-group">
    </br><label for="autor"><strong>Autor:</strong></label></br>
    <input type="text" class="form-control" name="autor" value="<%=obtenerAtributo(request,"valAutor")%>"/>    
  </div>

<div class="form-group">
    </br><label for="resumen"><strong>Resumen: </strong></label></br>
    <input type="text" class="form-control" name="resumen" value="<%=obtenerAtributo(request,"valResumen")%>"/>    
  </div>

  <div class="form-group">
    </br><label for="editorial"><strong>Editorial: </strong></label></br>
    <input type="text" class="form-control" name="editorial" value="<%=obtenerAtributo(request,"valEditorial")%>"/>    
  </div>
  
  <div class="form-group">
   </br> <label for="idioma"><strong>Idioma: </strong></label></br>
    <input type="text" class="form-control" name="idioma" value="<%=obtenerAtributo(request,"valIdioma")%>"/>    
  </div>
  
  <div class="form-group">
   </br><label for="anioPubl"><strong>Año de publicación: </strong></label></br>
    <input type="text" class="form-control" name="anioPubl" value="<%=obtenerAtributo(request,"valAnioPubl")%>"/>    
  </div>
  
  
  <div class="form-group">
    </br><label for="numArch"><strong>Número de Archivos</strong></label></br>
    <input type="text" class="form-control" name="numArch" value="<%=obtenerAtributo(request,"valNumArch")%>"/>    
  </div>
  <td></br><input type="submit" value="Editar"/></td>
</div>




<!-- 
<tr class="table-active">
<td> Id:</td>
<td><input type="text" name="id" value="<%=obtenerAtributo(request,"valId")%>" readonly/></td>
</tr>

 
<tr class="">
<td> Titulo:</td>
<td><input type="text" name="titulo" value="<%=obtenerAtributo(request,"valTitulo")%>"/></td>
</tr>



<tr class="">
<td> Autor:</td>
<td><input type="text" name="autor" value="<%=obtenerAtributo(request,"valAutor")%>"/></td>
</tr>

<tr class="">
<td> Resumen:</td>
<td><input type="text" name="resumen" value="<%=obtenerAtributo(request,"valResumen")%>"/></td>
</tr>

<tr class="">
<td> Editorial:</td>
<td><input type="text" name="editorial" value="<%=obtenerAtributo(request,"valEditorial")%>"/></td>
</tr>

<tr class="">
<td> Idioma:</td>
<td><input type="text" name="idioma" value="<%=obtenerAtributo(request,"valIdioma")%>"/></td>
</tr>

<tr class="">
<td> Año de publicación:</td>
<td><input type="text" name="anioPubl" value="<%=obtenerAtributo(request,"valAnioPubl")%>"/></td>
</tr>

<tr class="">
<td> Cantidad de Archivos:</td>
<td><input type="text" name="numArch" value="<%=obtenerAtributo(request,"valNumArch")%>"/></td>
</tr>
 -->
 

</form> 
</table>
</DIV>
 
</body>
</html>