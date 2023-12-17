package mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import mvc.model.Hoteis;
@Repository
public interface HotelRepository extends JpaRepository<Hoteis, Long>{

}
