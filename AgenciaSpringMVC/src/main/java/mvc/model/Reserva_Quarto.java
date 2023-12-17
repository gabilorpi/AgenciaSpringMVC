package mvc.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
@Entity
@Table(name = "Reserva_Quarto")


public class Reserva_Quarto {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	    private long idReserva;
	    private long quarto;
	    private String dataCheckOut;
	    private String dataCheckIn;
	   
		
	   
		@Override
		public String toString() {
			return "Reserva_Quarto [idReserva=" + idReserva + ", quarto=" + quarto + ", dataCheckOut=" + dataCheckOut
					+ ", dataCheckIn=" + dataCheckIn +  "]";
		}
	    
	    
}
