package pruebas;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import org.junit.Assert;
import org.junit.Before;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import dao.ProductoDAO;
import model.Producto;

class testProducto {
	@Test
	public void crear() throws SQLException {
	
		 
		Producto product = new Producto();
		ProductoDAO productoDAO = new ProductoDAO();
		product.setNombre("prueba cero");
		product.setCantidad(0);
		product.setPrecio(3.0);
		
		productoDAO.guardar(product);
		Producto producto = productoDAO.obtenerProductos().get(6);
		
		Assert.assertEquals(product.getNombre(), producto.getNombre());
		Assert.assertEquals(product.getCantidad(), producto.getCantidad());
		Assert.assertEquals(product.getPrecio(), producto.getPrecio(), 0.001);
		Assert.assertNotNull(producto);

		return;
	}
	
	@Test
	public void listar() throws SQLException {
		
		Producto product = new Producto();
		ProductoDAO productoDAO = new ProductoDAO();
		List<Producto> productos = productoDAO.obtenerProductos();
		//Assert.assertEquals(5, productos.size());
		Producto producto = productos.get(0);
		Producto producto1 = productos.get(1);

		Assert.assertEquals("camiseta", producto.getNombre());
		Assert.assertEquals(33, producto.getCantidad());
		Assert.assertEquals("vasos", producto1.getNombre());
		Assert.assertEquals(100, producto1.getCantidad());

		return;
	}

	/*@Test
	public void eliminar() throws SQLException{
		Producto product = new Producto();
		ProductoDAO productoDAO = new ProductoDAO();
		
		productoDAO.eliminar(31);
		product=productoDAO.obtenerProducto(31);
		Assert.assertNull(product);
	}*/

}
