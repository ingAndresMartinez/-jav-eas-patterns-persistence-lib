package co.edu.javeriana.eas.patterns.persistence.repositories;

import co.edu.javeriana.eas.patterns.persistence.entities.PersonEntity;
import co.edu.javeriana.eas.patterns.persistence.entities.ProviderEntity;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface IPersonRepository extends CrudRepository<PersonEntity, Integer> {

    Optional<PersonEntity> findByIdentificationTypeAndIdentificationNumber(int identificationType, String identificationNumber);

    List<PersonEntity> findByProvider(ProviderEntity provider);

}