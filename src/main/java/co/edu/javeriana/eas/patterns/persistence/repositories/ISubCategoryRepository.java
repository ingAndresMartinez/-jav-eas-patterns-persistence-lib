package co.edu.javeriana.eas.patterns.persistence.repositories;

import co.edu.javeriana.eas.patterns.persistence.entities.SubCategoryEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ISubCategoryRepository extends CrudRepository<SubCategoryEntity, Integer> {

    @Query("SELECT sc FROM SubCategoryEntity sc " +
            "INNER JOIN CategoryEntity c " +
            "ON sc.category = c.id " +
            "AND c.id = :idCategory")
    List<SubCategoryEntity> findByCategory(int idCategory);

}