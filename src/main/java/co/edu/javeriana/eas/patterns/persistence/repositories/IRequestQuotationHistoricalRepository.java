package co.edu.javeriana.eas.patterns.persistence.repositories;

import co.edu.javeriana.eas.patterns.persistence.entities.RequestQuotationEntity;
import co.edu.javeriana.eas.patterns.persistence.entities.RequestQuotationHistoricalEntity;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface IRequestQuotationHistoricalRepository extends CrudRepository<RequestQuotationHistoricalEntity, Integer> {

    List<RequestQuotationHistoricalEntity> findByRequest(RequestQuotationEntity requestQuotationEntity);

}