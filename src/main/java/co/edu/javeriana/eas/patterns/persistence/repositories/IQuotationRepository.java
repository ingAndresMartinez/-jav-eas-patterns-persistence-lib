package co.edu.javeriana.eas.patterns.persistence.repositories;

import co.edu.javeriana.eas.patterns.persistence.entities.*;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface IQuotationRepository extends CrudRepository<QuotationEntity, Integer> {

    List<QuotationEntity> findByRequest(RequestQuotationEntity request);

    List<QuotationEntity> findByProvider(ProviderEntity provider);

    @Query("SELECT q FROM QuotationEntity q " +
            "INNER JOIN RequestQuotationEntity r " +
            "ON q.request = r.id " +
            "INNER JOIN PersonEntity p " +
            "ON r.person = p.id " +
            "AND p = :personEntity")
    List<QuotationEntity> findByPerson(PersonEntity personEntity);

    @Query("SELECT q FROM QuotationEntity q " +
            "INNER JOIN RequestQuotationEntity r " +
            "ON q.request = r.id " +
            "INNER JOIN PersonEntity p " +
            "ON r.person = p.id " +
            "AND p = :personEntity " +
            "INNER JOIN CategoryEntity c " +
            "ON r.category = c.id " +
            "AND c = :categoryEntity")
    List<QuotationEntity> findByPersonAndAndCategory(PersonEntity personEntity, CategoryEntity categoryEntity);

    @Query("SELECT q FROM QuotationEntity q " +
            "INNER JOIN RequestQuotationEntity r " +
            "ON q.request = r.id " +
            "INNER JOIN CategoryEntity c " +
            "ON r.category = c.id " +
            "AND c = :categoryEntity")
    List<QuotationEntity> findByCategory(CategoryEntity categoryEntity);

}