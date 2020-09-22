package ec.epn.edu.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class NovelaGrafica {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id_ng;
	@Column
	private String ng_titulo;
	@Column
	private String ng_autor;
	@Column
	private String ng_resumen;
	@Column
	private String ng_editorial;
	@Column
	private String ng_idioma;
	@Column
	private String ng_anio_publ;
	@Column
	private Integer ng_n_archivos;	
	
	public Integer getId_Ng() {
		return id_ng;
	}
	public void setId_Ng(Integer id_ng) {
		this.id_ng = id_ng;
	}
	public String getNg_titulo() {
		return ng_titulo;
	}
	public void setNg_titulo(String ng_titulo) {
		this.ng_titulo = ng_titulo;
	}
	public String getNg_autor() {
		return ng_autor;
	}
	public void setNg_autor(String ng_autor) {
		this.ng_autor = ng_autor;
	}
	public String getNg_resumen() {
		return ng_resumen;
	}
	public void setNg_resumen(String ng_resumen) {
		this.ng_resumen = ng_resumen;
	}
	public String getNg_editorial() {
		return ng_editorial;
	}
	public void setNg_editorial(String ng_editorial) {
		this.ng_editorial = ng_editorial;
	}
	public String getNg_idioma() {
		return ng_idioma;
	}
	public void setNg_idioma(String ng_idioma) {
		this.ng_idioma = ng_idioma;
	}
	
	public String getNg_anio_publ() {
		return ng_anio_publ;
	}
	public void setNg_anio_publ(String ng_anio_publ) {
		this.ng_anio_publ = ng_anio_publ;
	}
	public Integer getNg_n_archivos() {
		return ng_n_archivos;
	}
	public void setNg_n_archivos(Integer ng_n_archivos) {
		this.ng_n_archivos = ng_n_archivos;
	}
	
}
