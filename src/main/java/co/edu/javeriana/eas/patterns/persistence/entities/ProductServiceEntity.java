package co.edu.javeriana.eas.patterns.persistence.entities;

import javax.persistence.*;

@Entity()
@Table(name = "producto_servicio")
public class ProductServiceEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_producto_servicio")
    private int id;
    @JoinColumn(name = "id_sub_categoria", referencedColumnName = "id_sub_categoria", nullable = false)
    @ManyToOne(optional = false)
    private SubCategoryEntity subCategory;
    @Column(name = "producto_servicio")
    private String description;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public SubCategoryEntity getSubCategory() {
        return subCategory;
    }

    public void setSubCategory(SubCategoryEntity subCategoryDescription) {
        this.subCategory = subCategoryDescription;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}