package co.edu.javeriana.eas.patterns.persistence.entities;

import javax.persistence.*;

@Entity()
@Table(name = "persona")
public class PersonEntity extends PersonalInfo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column("id_persona")
    private int id;
    @Column("nombre")
    private String firstName;
    @Column("apellido")
    private String lastName;
    @JoinColumn(name = "id_proveedor", referencedColumnName = "id_proveedor")
    @ManyToOne(optional = false)
    private ProviderEntity provider;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public ProviderEntity getProvider() {
        return provider;
    }

    public void setProviderEntity(ProviderEntity provider) {
        this.provider = provider;
    }

}