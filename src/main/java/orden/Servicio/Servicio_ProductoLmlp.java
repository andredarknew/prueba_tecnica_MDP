package orden.Servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import orden.Entidad.Productos;
import orden.Repositorio.Repositorio_Producto;

@Service
public class Servicio_ProductoLmlp implements Servicio_Producto{
	@Autowired
	private Repositorio_Producto repository;

	@Override
	public int ValidarStock(String IdProducto) {
		return repository.ValidarStock(IdProducto);
	}

	@Override
	public List<Productos> listaProductos(String IdProducto, String Nombre, String Categoria) {
		return repository.listaProductos(IdProducto, Nombre, Categoria);
	}
}
