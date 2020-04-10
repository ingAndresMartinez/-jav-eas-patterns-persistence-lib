package co.edu.javeriana.eas.patterns.persistence.repositories;

import co.edu.javeriana.eas.patterns.persistence.entities.QuotationDetailEntity;
import co.edu.javeriana.eas.patterns.persistence.entities.QuotationEntity;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface IQuotationDetailRepository extends CrudRepository<QuotationDetailEntity, Integer> {

    List<QuotationDetailEntity> findByQuotation(QuotationEntity quotationEntity);

}