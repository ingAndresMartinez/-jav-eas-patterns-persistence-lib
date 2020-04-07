package co.edu.javeriana.eas.patterns.persistence.entities;

import javax.persistence.*;

@Entity()
@Table(name = "pefil")
public class ProfileEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column("id_perfil")
    private int id;
    @Column("perfil")
    private String profileDescription;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProfileDescription() {
        return profileDescription;
    }

    public void setProfileDescription(String profileDescription) {
        this.profileDescription = profileDescription;
    }

}