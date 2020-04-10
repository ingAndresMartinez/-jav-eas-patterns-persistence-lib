package co.edu.javeriana.eas.patterns.persistence.repositories;

import co.edu.javeriana.eas.patterns.persistence.entities.RequestStatusEntity;
import org.springframework.data.repository.CrudRepository;

public interface IRequestStatusRepository extends CrudRepository<RequestStatusEntity, Integer> {

}