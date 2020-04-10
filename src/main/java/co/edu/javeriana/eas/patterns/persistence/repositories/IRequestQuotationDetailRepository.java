package co.edu.javeriana.eas.patterns.persistence.repositories;

import co.edu.javeriana.eas.patterns.persistence.entities.*;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface IRequestQuotationDetailRepository extends CrudRepository<RequestQuotationDetailEntity, Integer> {

    List<RequestQuotationDetailEntity> findByRequest(RequestQuotationEntity requestQuotationEntity);

}