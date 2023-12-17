package mvc.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;



@Data
@Entity
@Table(name = "voo")

public class Voos {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long idVoo;
    private String horaDecolagem;
    private String dataDecolagem;
    private String horaAterrissagem;
    private String dataAterrissagem;
    private String origem;
    private String destino;
    private double preco;
	
	
    
}
