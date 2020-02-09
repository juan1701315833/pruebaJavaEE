<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
		 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">   		
<script src="js/bootstrap.min.js"></script> 

<title>Crear Producto</title>
</head>
<body>
	<h1>Crear Producto</h1>

	<form action="productos" method="post">
	<input type="hidden" name="opcion" value="guardar">
		<div class="form-group">
			 <label for="nombre" class="control-label col-xs-4">Nombre:</label>
             <input type="text" name="nombre" id="nombre" class="form-control" value="${productos.nombre}" required="true" />   
			
			 <label for="cantidad" class="control-label col-xs-4">Cantidad:</label>                   
                    <input type="text" name="cantidad" id="cantidad" class="form-control" value="${productos.cantidad}" required="true"/> 

             <label for="precio" class="control-label col-xs-4">Precio:</label>                 
             <input type="text"  name="precio" id="precio" class="form-control" value="${productos.precio}" required="true"/>
						
		</div>
		<input type="submit" value="Guardar">
	</form>
</body>
</html>