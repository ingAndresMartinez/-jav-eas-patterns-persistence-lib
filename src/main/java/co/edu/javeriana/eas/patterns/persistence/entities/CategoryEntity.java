package co.edu.javeriana.eas.patterns.persistence.entities;

import javax.persistence.*;

@Entity()
@Table(name = "categoria")
public class CategoryEntity extends PersonalInfo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column("id_categoria")
    private int id;
    @Column("categoria")
    private String categoryDescription;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategoryDescription() {
        return categoryDescription;
    }

    public void setCategoryDescription(String categoryDescription) {
        this.categoryDescription = categoryDescription;
    }

}