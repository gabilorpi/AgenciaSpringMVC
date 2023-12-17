package mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import mvc.model.Agencias;

@Repository
public interface AgenciaRepository extends JpaRepository<Agencias, Long>{

}
