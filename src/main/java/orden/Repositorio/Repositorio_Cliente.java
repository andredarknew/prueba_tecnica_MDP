package orden.Repositorio;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import orden.Entidad.Clientes;

public interface Repositorio_Cliente extends JpaRepository<Clientes, Integer>{

	@Query(value = "{call sp_lista_cuenta()}" , nativeQuery = true)
	public abstract List<Clientes>  listaUsuario(@Param("param") int idPersona);
	
}
