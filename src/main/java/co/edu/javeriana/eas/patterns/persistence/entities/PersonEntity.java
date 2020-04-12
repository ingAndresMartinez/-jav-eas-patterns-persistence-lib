package co.edu.javeriana.eas.patterns.persistence.entities;

import javax.persistence.*;

@Entity()
@Table(name = "persona")
public class PersonEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_persona")
    private int id;
    @Column(name = "nombre")
    private String firstName;
    @Column(name = "apellido")
    private String lastName;
    @JoinColumn(name = "id_proveedor", referencedColumnName = "id_proveedor")
    @ManyToOne()
    private ProviderEntity provider;
    @JoinColumn(name = "id_tipo_identificacion", referencedColumnName = "id_tipo_identificacion", nullable = false)
    @ManyToOne(optional = false)
    private IdentificationTypeEntity identificationType;
    @Column(name = "numero_identificacion")
    private String identificationNumber;
    @Column(name = "correo")
    private String email;
    @Column(name = "telefono")
    private String phoneNumber;

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

    public void setProvider(ProviderEntity provider) {
        this.provider = provider;
    }

    public IdentificationTypeEntity getIdentificationType() {
        return identificationType;
    }

    public void setIdentificationType(IdentificationTypeEntity identificationType) {
        this.identificationType = identificationType;
    }

    public String getIdentificationNumber() {
        return identificationNumber;
    }

    public void setIdentificationNumber(String identificationNumber) {
        this.identificationNumber = identificationNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

}