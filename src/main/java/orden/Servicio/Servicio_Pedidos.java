package orden.Servicio;

import java.util.List;

import orden.Entidad.Pedidos;

public interface Servicio_Pedidos {
	public Object RegPedido();
	public List<Pedidos> listaPedidos(int idPedido, int idCliente);
}
