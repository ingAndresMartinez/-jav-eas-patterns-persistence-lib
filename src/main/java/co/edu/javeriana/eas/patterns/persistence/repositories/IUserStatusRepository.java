package co.edu.javeriana.eas.patterns.persistence.repositories;

import co.edu.javeriana.eas.patterns.persistence.entities.UserStatusEntity;
import org.springframework.data.repository.CrudRepository;

public interface IUserStatusRepository extends CrudRepository<UserStatusEntity, Integer> {
    
}
