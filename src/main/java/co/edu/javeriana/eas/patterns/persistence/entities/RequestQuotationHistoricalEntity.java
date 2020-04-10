package co.edu.javeriana.eas.patterns.persistence.entities;

import javax.persistence.*;

@Entity()
@Table(name = "solicitud_historico_estado")
public class RequestQuotationHistoricalEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_solicitud_historico_estado")
    private int id;
    @JoinColumn(name = "id_solicitud", referencedColumnName = "id_solicitud", nullable = false)
    @ManyToOne(optional = false)
    private RequestQuotationEntity request;
    @JoinColumn(name = "id_estado_solicitud", referencedColumnName = "id_estado_solicitud", nullable = false)
    @ManyToOne(optional = false)
    private RequestStatusEntity status;

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

    public RequestStatusEntity getStatus() {
        return status;
    }

    public void setStatus(RequestStatusEntity status) {
        this.status = status;
    }

}