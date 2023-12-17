package mvc.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "hotel")

public class Hoteis {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long idHotel;
    private double precoPorNoite;
    private String categorias;
    private String nomeHotel;
    private String cep;
    private String rua;
    private String bairro;
    private String telefone;
    
	
}
