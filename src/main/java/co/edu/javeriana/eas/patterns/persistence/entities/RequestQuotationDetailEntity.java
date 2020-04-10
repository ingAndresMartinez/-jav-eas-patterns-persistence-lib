package co.edu.javeriana.eas.patterns.persistence.entities;

import javax.persistence.*;

@Entity()
@Table(name = "solicitud_detalle")
public class RequestQuotationDetailEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_solicitud_detalle")
    private int id;
    @JoinColumn(name = "id_solicitud", referencedColumnName = "id_solicitud", nullable = false)
    @ManyToOne(optional = false)
    private RequestQuotationEntity request;
    @JoinColumn(name = "id_producto_servicio", referencedColumnName = "id_producto_servicio", nullable = false)
    @ManyToOne(optional = false)
    private ProductServiceEntity productService;
    @Column(name = "cant_producto_servicio")
    private int quantity;
    @Column(name = "info_adicional")
    private String additionalInfo;

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

    public ProductServiceEntity getProductService() {
        return productService;
    }

    public void setProductService(ProductServiceEntity productService) {
        this.productService = productService;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getAdditionalInfo() {
        return additionalInfo;
    }

    public void setAdditionalInfo(String additionalInfo) {
        this.additionalInfo = additionalInfo;
    }

}