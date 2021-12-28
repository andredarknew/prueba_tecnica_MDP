package orden.Servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import orden.Entidad.Pedidos;
import orden.Repositorio.Repositorio_Pedidos;

@Service
public class Servicio_PedidosLmlp implements Servicio_Pedidos{
	@Autowired
	private Repositorio_Pedidos repository;

	@Override
	public Object RegPedido() {
		return repository.RegistrarPedido();
	}
	
	@Override
	public List<Pedidos> listaPedidos(int idPedido, int idCliente){
		return repository.listaPedido(idPedido, idCliente);
	}
}
