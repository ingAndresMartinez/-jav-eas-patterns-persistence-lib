package co.edu.javeriana.eas.patterns.persistence.repositories;

import co.edu.javeriana.eas.patterns.persistence.entities.IdentificationTypeEntity;
import org.springframework.data.repository.CrudRepository;

public interface IIdentificationTypeRepository extends CrudRepository<IdentificationTypeEntity, Integer> {

}