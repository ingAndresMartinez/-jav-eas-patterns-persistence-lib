package co.edu.javeriana.eas.patterns.persistence.repositories;

import co.edu.javeriana.eas.patterns.persistence.entities.*;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface IRequestQuotationRepository extends CrudRepository<RequestQuotationEntity, Integer> {

    List<RequestQuotationEntity> findByPerson(PersonEntity personEntity);

    List<RequestQuotationEntity> findByPersonAndStatus(PersonEntity personEntity, RequestStatusEntity status);

    List<RequestQuotationEntity> findByPersonAndAndCategory(PersonEntity personEntity, CategoryEntity categoryEntity);

    List<RequestQuotationEntity> findByCategory(CategoryEntity categoryEntity);

}