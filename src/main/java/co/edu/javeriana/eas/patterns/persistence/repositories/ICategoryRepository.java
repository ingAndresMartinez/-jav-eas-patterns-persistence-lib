package co.edu.javeriana.eas.patterns.persistence.repositories;

import co.edu.javeriana.eas.patterns.persistence.entities.CategoryEntity;
import org.springframework.data.repository.CrudRepository;

public interface ICategoryRepository extends CrudRepository<CategoryEntity, Integer> {

}