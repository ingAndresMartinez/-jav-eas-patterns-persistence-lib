package co.edu.javeriana.eas.patterns.persistence.repositories;

import co.edu.javeriana.eas.patterns.persistence.entities.*;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface IRequestQuotationRepository extends CrudRepository<RequestQuotationEntity, Integer> {

    List<RequestQuotationEntity> findByPerson(PersonEntity personEntity);

    List<RequestQuotationEntity> findByPersonAndStatus(PersonEntity personEntity, RequestStatusEntity status);

    List<RequestQuotationEntity> findByPersonAndAndCategory(PersonEntity personEntity, CategoryEntity categoryEntity);

    List<RequestQuotationEntity> findByCategory(CategoryEntity categoryEntity);

    @Modifying
    @Transactional
    @Query(value = "update solicitud_cotizacion set id_estado_solicitud =:status where id_solicitud =:requestQuotationId", nativeQuery = true)
    void updateStatusById(int status, int requestQuotationId);

}