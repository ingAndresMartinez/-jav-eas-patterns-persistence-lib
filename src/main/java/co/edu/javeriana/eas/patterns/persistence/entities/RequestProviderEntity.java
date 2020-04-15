package co.edu.javeriana.eas.patterns.persistence.entities;

import javax.persistence.*;

@Entity()
@Table(name = "proveedor_solicitud")
public class RequestProviderEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_proveedor_solicitud")
    private int id;
    @JoinColumn(name = "id_proveedor", referencedColumnName = "id_proveedor", nullable = false)
    @ManyToOne(optional = false)
    private ProviderEntity provider;
    @JoinColumn(name = "id_solicitud", referencedColumnName = "id_solicitud", nullable = false)
    @ManyToOne(optional = false)
    private RequestQuotationEntity request;
    @Column(name = "proveedor_notificado")
    private int notified;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public ProviderEntity getProvider() {
        return provider;
    }

    public void setProvider(ProviderEntity provider) {
        this.provider = provider;
    }

    public RequestQuotationEntity getRequest() {
        return request;
    }

    public void setRequest(RequestQuotationEntity request) {
        this.request = request;
    }

    public int getNotified() {
        return notified;
    }

    public void setNotified(int notified) {
        this.notified = notified;
    }
    
}