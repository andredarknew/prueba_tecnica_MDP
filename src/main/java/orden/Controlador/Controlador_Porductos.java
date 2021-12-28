package orden.Controlador;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import orden.Entidad.Productos;
import orden.Servicio.Servicio_Producto;

@Controller
@RequestMapping(value = "/productos")
public class Controlador_Porductos {

	@Autowired
	private Servicio_Producto ProductoService;
	private String URL="http://localhost:8070/productos";
	
	/*@RequestMapping("/cargaProductos")
	@ResponseBody
	public List<Productos> listaProductos(HttpSession session) {
		Productos objProductos = (Productos) session.getAttribute("objUsuario");
		return ProductoService.listaProductos(objProductos.getID(), objProductos.getNombre(), objProductos.getCategoria());
	}*/
	
	@RequestMapping("/cargaProductos")
	public String Productos() {
		return "Productos";
	}
	
	@RequestMapping(value = "/listaConsulta/{s1}/{s2}")
	@ResponseBody
	public Productos[] listaConsultaProductos(@PathVariable("s1") int st1, @PathVariable("s2") int st2) {
		Productos[] lista=null;
		RestTemplate rt=new RestTemplate();
		ResponseEntity<Productos[]>data= rt.getForEntity(
						URL+"/listAllConsulta/"+st1,Productos[].class);
		lista=data.getBody();
		return lista;
	}
	
	@RequestMapping("/registraProductos")
	public String RegistrarProductos() {
		return "RegistrarProducto";
	}
	
	@RequestMapping("/validarStockProductos")
	@ResponseBody
	public int ValidarStockProductos(HttpSession session) {
		Productos objProductos = (Productos) session.getAttribute("objUsuario");
		return ProductoService.ValidarStock(objProductos.getID());
	}
}
