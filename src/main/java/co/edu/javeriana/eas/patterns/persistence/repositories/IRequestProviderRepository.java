package co.edu.javeriana.eas.patterns.persistence.repositories;

import co.edu.javeriana.eas.patterns.persistence.entities.*;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface IRequestProviderRepository extends CrudRepository<RequestProviderEntity, Integer> {

    List<RequestProviderEntity> findByProviderAndNotified(ProviderEntity providerEntity, int notified);

    RequestProviderEntity findByProviderAndAndRequest(ProviderEntity providerEntity, RequestQuotationEntity requestQuotationEntity);

}