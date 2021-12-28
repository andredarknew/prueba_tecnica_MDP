package orden.Servicio;

import java.util.List;

import orden.Entidad.Productos;

public interface Servicio_Producto {
	public abstract int ValidarStock(String IdProducto);
	public abstract List<Productos> listaProductos(String IdProducto, String Nombre, String Categoria);
}
