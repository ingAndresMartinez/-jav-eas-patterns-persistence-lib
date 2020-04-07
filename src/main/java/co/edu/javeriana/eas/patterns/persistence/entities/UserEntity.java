package co.edu.javeriana.eas.patterns.persistence.entities;

import javax.persistence.*;

@Entity()
@Table(name = "usuario")
public class UserEntity extends PersonalInfo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column("id_usuario")
    private int id;
    @JoinColumn(name = "id_persona", referencedColumnName = "id_categoria", nullable = false)
    @ManyToOne(optional = false)
    private PersonEntity person;
    @JoinColumn(name = "id_perfil", referencedColumnName = "id_perfil", nullable = false)
    @ManyToOne(optional = false)
    private ProfileEntity profile;
    @Column("usuario")
    private String userCode;
    private String password;
    private String token;
    @JoinColumn(name = "id_estado", referencedColumnName = "id_estado", nullable = false)
    @ManyToOne(optional = false)
    private UserStatusEntity status;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public PersonEntity getPerson() {
        return person;
    }

    public void setPerson(PersonEntity person) {
        this.person = person;
    }

    public ProfileEntity getProfile() {
        return profile;
    }

    public void setProfile(ProfileEntity profile) {
        this.profile = profile;
    }

    public String getUserCode() {
        return userCode;
    }

    public void setUserCode(String userCode) {
        this.userCode = userCode;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public UserStatusEntity getStatus() {
        return status;
    }

    public void setStatus(UserStatusEntity status) {
        this.status = status;
    }

}