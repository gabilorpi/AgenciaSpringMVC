package mvc.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;


@Data
@Entity
@Table(name = "passagens")


public class Passagens {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	    private long idPassagem;
	    private long idVoo;
	    private long fkClienteIdCliente;
	    private long fkVooIdVoo;
    
	    @ManyToOne
		@JoinColumn(name = "cliente_id")
		private Clientes cliente;
		
		@ManyToOne
		@JoinColumn(name = "voo_id")
		private Voos voo;

  
}