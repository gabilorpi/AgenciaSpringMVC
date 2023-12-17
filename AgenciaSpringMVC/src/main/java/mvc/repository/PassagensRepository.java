package mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import mvc.model.Passagens;

public interface PassagensRepository extends JpaRepository<Passagens, Long>{

}
