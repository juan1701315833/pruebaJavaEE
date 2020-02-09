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
<title>Listar Productos</title>
</head>
<body>
	<h1>Listar Productos</h1>

	<table class="table">
	  <thead class="thead-dark">
		<tr>
			<th scope="col">Id</th>
			<th scope="col">Nombre</th>
			<th scope="col">Cantidad</th>
			<th scope="col">Precio</th>
			<th scope="col">Fecha Creacion</th>
			<th scope="col">Fecha Actualizacion</th>
			<th scope="col">Accion</th>
			<th scope="col">Comprar</th>
		</tr>
		</thead>
		<c:forEach var="producto" items="${lista}">
			<tr>
				<td> <a class="btn btn-warning" href="productos?opcion=editar&id=<c:out value="${ producto.id}"></c:out>"> <c:out value="${ producto.id}"></c:out>  </a> </td>
				<td> <c:out value="${ producto.nombre}"></c:out> </td>
				<td> <c:out value="${ producto.cantidad}"></c:out></td>
				<td> <c:out value="${ producto.precio}"></c:out> </td>
				<td><c:out value="${ producto.fechaCrear}"></c:out> </td>
				<td><c:out value="${ producto.fechaActualizar}"></c:out> </td>
				<td> <a class="btn btn-danger" href="productos?opcion=eliminar&id=<c:out value="${ producto.id}"></c:out>"> Eliminar  </a> </td>
				<c:if test="${producto.cantidad != '0'}">
					<td> <a  class="btn btn-success"  href="productos?opcion=comprar&id=<c:out value="${ producto.id}"></c:out>"> Comprar  </a> </td>
				</c:if>
				
			</tr>
		</c:forEach>
	</table>
</body>
</html>