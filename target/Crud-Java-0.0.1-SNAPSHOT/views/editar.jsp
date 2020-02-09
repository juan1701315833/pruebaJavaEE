<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">   		
<script src="js/bootstrap.min.js"></script> 
<title>Editar Producto</title>
</head>
<body>
<h1>Editar Producto</h1>
<form action="productos" method="post">
<c:set var="productos" value="${producto}"> </c:set>
	<input type="hidden" name="opcion" value="editar">
	<input type="hidden" name="id" value="${producto.id}">
		<div class="form-group">
			 <label for="nombre" class="control-label col-xs-4">Nombre:</label>
             <input type="text" name="nombre" id="nombre" class="form-control" value="${productos.nombre}" />   
			
			 <label for="cantidad" class="control-label col-xs-4">Cantidad:</label>                   
                    <input type="text" name="cantidad" id="cantidad" class="form-control" value="${productos.cantidad}"/> 

             <label for="precio" class="control-label col-xs-4">Precio:</label>                 
             <input type="text"  name="precio" id="precio" class="form-control" value="${productos.precio}"/>
						
		</div>
		<input type="submit" value="Guardar">
	</form>
</body>
</html>