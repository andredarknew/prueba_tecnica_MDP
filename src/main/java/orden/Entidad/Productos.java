package orden.Entidad;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
@Entity
@Table(name = "Productos")
public class Productos {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID")
	private String ID;
	
	@Column(name="Nombre")
	private String Nombre;
	
	@Column(name="Categoria")
	private String Categoria;
	
	@Column(name="Stock")
	private double  Stock;
	
	@Column(name="Precio")
	private double Precio;
	
	@Column(name="Estado")
	private String Estado;
	
	@Column(name="UltUsuarioMod")
	private String UltUsuarioMod;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
	@Column(name="UltFechaMod")
	private Date UltFechaMod;
	
	
}
