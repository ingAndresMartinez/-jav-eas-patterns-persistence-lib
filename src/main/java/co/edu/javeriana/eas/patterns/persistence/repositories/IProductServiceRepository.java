package co.edu.javeriana.eas.patterns.persistence.repositories;

import co.edu.javeriana.eas.patterns.persistence.entities.ProductServiceEntity;
import co.edu.javeriana.eas.patterns.persistence.entities.SubCategoryEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface IProductServiceRepository extends CrudRepository<ProductServiceEntity, Integer> {

    List<ProductServiceEntity> findBySubCategory(SubCategoryEntity subCategoryEntity);

    @Query("SELECT ps FROM ProductServiceEntity ps " +
            "INNER JOIN SubCategoryEntity s " +
            "ON ps.subCategory = s.id " +
            "INNER JOIN CategoryEntity c " +
            "ON s.category = c.id " +
            "AND c.id = :idCategory")
    List<ProductServiceEntity> findByCategory(int idCategory);

}