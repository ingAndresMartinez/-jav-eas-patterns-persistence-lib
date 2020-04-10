package co.edu.javeriana.eas.patterns.persistence.entities;

import javax.persistence.*;

@Entity()
@Table(name = "cotizacion")
public class QuotationEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_cotizacion")
    private int id;
    @JoinColumn(name = "id_solicitud", referencedColumnName = "id_solicitud", nullable = false)
    @ManyToOne(optional = false)
    private RequestQuotationEntity request;
    @JoinColumn(name = "id_proveedor", referencedColumnName = "id_proveedor", nullable = false)
    @ManyToOne(optional = false)
    private ProviderEntity provider;
    @Column(name = "vlr_cotizacion")
    private double amount;
    @Column(name = "notificacion_ok")
    private int notified;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public RequestQuotationEntity getRequest() {
        return request;
    }

    public void setRequest(RequestQuotationEntity request) {
        this.request = request;
    }

    public ProviderEntity getProvider() {
        return provider;
    }

    public void setProvider(ProviderEntity provider) {
        this.provider = provider;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public int getNotified() {
        return notified;
    }

    public void setNotified(int notified) {
        this.notified = notified;
    }

}