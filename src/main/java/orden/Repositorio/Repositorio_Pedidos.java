package orden.Repositorio;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import orden.Entidad.Pedidos;

public interface Repositorio_Pedidos extends JpaRepository<Pedidos, Integer>{

	@Query(value = "{call sp_registrar_pedido(:mon,:cd,:co)}" , nativeQuery = true)
	public Object RegistrarPedido ();
	
	@Query(value = "{call sp_listar_pedidos(:idPedido, :idCliente)}" , nativeQuery = true)
	public abstract List<Pedidos> listaPedido(@Param("idPedido")int idPedido, @Param("idCliente")int idCliente);
}
