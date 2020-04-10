package co.edu.javeriana.eas.patterns.persistence.entities;

import javax.persistence.*;

@Entity()
@Table(name = "cotizacion_detalle")
public class QuotationDetailEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_cotizacion_detalle")
    private int id;
    @JoinColumn(name = "id_cotizacion", referencedColumnName = "id_cotizacion", nullable = false)
    @ManyToOne(optional = false)
    private QuotationEntity quotation;
    @JoinColumn(name = "id_producto_servicio", referencedColumnName = "id_producto_servicio", nullable = false)
    @ManyToOne(optional = false)
    private ProductServiceEntity productService;
    @Column(name = "cant_producto_servicio")
    private int quantity;
    @Column(name = "vlr_producto_servicio")
    private double amount;
    @Column(name = "vlr_dcto_producto_servicio")
    private double discount;
    @Column(name = "des_oferta")
    private String description;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public QuotationEntity getQuotation() {
        return quotation;
    }

    public void setQuotation(QuotationEntity quotation) {
        this.quotation = quotation;
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

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}