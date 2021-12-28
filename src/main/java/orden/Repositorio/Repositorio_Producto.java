package orden.Repositorio;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import orden.Entidad.Productos;

public interface Repositorio_Producto extends JpaRepository<Productos, Integer>{

	@Query(value = "{call sp_listar_producto(:idProducto, :Nombre, :Categoria)}" , nativeQuery = true)
	public abstract List<Productos> listaProductos(@Param("idProducto")String idProducto, @Param("Nombre")String Nombre, @Param("Categoria")String Categoria);
	
	@Query(value = "{call sp_Validar_Stock(:idProducto)}" , nativeQuery = true)
	public abstract int ValidarStock(@Param("idProducto")String idProducto);
}
