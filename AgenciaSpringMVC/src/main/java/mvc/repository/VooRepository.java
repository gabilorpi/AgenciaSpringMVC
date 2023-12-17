package mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import mvc.model.Voos;
@Repository
public interface VooRepository extends JpaRepository<Voos, Long>{

}
