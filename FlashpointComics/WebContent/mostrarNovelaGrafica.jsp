<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.List" %>
<%@ page import="ec.epn.edu.modelo.NovelaGrafica" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">  
    
  	  
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/estilos.css">

<title>Pantalla 3 CRUD-Read Novela gráfica</title>
</head>
<body background="img/FlashpointComicsimg.png"> <!-- background="img/FlashpointComicsimg.png" -->
<!-- content="width=device-width, initial-scale=1" -->

<ul class="breadcrumb">
  <li><a href="#">Inicio / </a></li>
  <li><a href="#"> Editar / </a></li>
  <li><a href="#">Registrar / </a></li>
  <li class="active">Mostrar</li>
</ul>	   
    

<H1 style="color:#FDFCFC";><font face="Comic Sans MS">Novelas Gráficas a mostrar</font></H1>
  
  
   
   <div  style="background-color:white; float: left; width: 70%; text-align: justify;" >              
  
  <tr>
  <table class="table table-hover">
    <thead>
     <tr class="text-warning">
      	<th>Id</th>
      	<th>Titulo</th>
      	<th>Autor</th>
      	<th>Resumen</th>
      	<th>Idioma</th>      	      	
      	<th>Editar</th>
      	<th>Eliminar</th>     	
      </tr>
    </thead>


  
 
<!-- ESTO ESTÁ BIEN! -->    
      <%
      List<NovelaGrafica> novelaGrafica;
      novelaGrafica= (List<NovelaGrafica>)request.getAttribute("novelaGrafica");
            
            for (NovelaGrafica l:novelaGrafica) {
      %>  
    
    <tbody>
       <tr>    	
      	<td><%=l.getId_Ng()%></td>
      	<td><%=l.getNg_titulo()%></td>
      	<td><%=l.getNg_autor()%></td>
      	<td><%=l.getNg_resumen()%></td>
      	<td><%=l.getNg_idioma()%></td>  
      	<td class="coloruno"><a href="EditarNovelaGrafica?id=<%=l.getId_Ng() %>" >Editar atributos</a></td>    	      	
		<td class="coloruno"><a href="EliminarNovelaGrafica?id=<%=l.getId_Ng() %>">Eliminar</a></td>
		      	      	
      </tr>     
     
    </tbody>

      <% }%>      
</table></tr>

<tr>
</div>
   
   
 <div class="form-group" float: right; background-color:white; width: 25%; align="center">
 
  <label for="titulo" style="color:#FDFCFC" text-align: center><strong>TítuloPrueba: </strong> </label></br>
 
 <select class="form-control" id="titulo"; style="width:20%">    
  
  		<%    
  		
            for (NovelaGrafica l:novelaGrafica) {            	
     	 %>
 		
       <option value="EditarNovelaGrafica?id=<%=l.getId_Ng()%>">
       <a href="EditarNovelaGrafica?id=<%=l.getId_Ng()%>">
       <%=l.getNg_titulo()%>
       </a>
       </option>   
  <%}%> 
  
  </select>

  <h2 style="color:#FDFCFC">Realizar otras actividades!</h2>
    <button align="center" class="btn btn-primary" onclick="location.href='pantallaInicio.jsp'">LLévame al inicio</button>
    <button align="center" class="btn btn-success" onclick="location.href='registrarNovelaGrafica.jsp'">Déjame registrar</button>
	<button align="center" class="btn btn-info" onclick="location.href='editarNovelaGrafica.jsp'">Déjame editar</button>
  
</div>
</body>
</html>