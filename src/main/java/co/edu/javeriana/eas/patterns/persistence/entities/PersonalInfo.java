package co.edu.javeriana.eas.patterns.persistence.entities;

import javax.persistence.Column;

public class PersonalInfo {

    @Column("id_tipo_identificacion")
    private int identificationType;
    @Column("numero_identificacion")
    private String identificationNumber;
    @Column("correo")
    private String email;
    @Column("telefono")
    private String phoneNumber;

    public int getIdentificationType() {
        return identificationType;
    }

    public void setIdentificationType(int identificationType) {
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