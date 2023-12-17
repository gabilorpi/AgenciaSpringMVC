package mvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import mvc.model.Contatos;
@Repository
public interface ContatoRepository extends JpaRepository<Contatos, Long>{

}
