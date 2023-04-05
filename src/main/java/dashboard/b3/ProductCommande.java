package dashboard.b3;


import io.quarkus.hibernate.orm.panache.PanacheEntityBase;

import javax.persistence.*;


@Entity
@Table(name = "product_order")
public class ProductCommande extends PanacheEntityBase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long product_order_id;

    @OneToOne
    @JoinColumn(name = "order_id")
    public Commandes order;

    @OneToOne
    @JoinColumn(name = "product_id")
    public Products product;

    @Column
    public String quantity;

    public Long getProduct_order_id() {
        return product_order_id;
    }

    public void setProduct_order_id(Long product_order_id) {
        this.product_order_id = product_order_id;
    }

    public Commandes getOrder() {
        return order;
    }

    public void setOrder(Commandes order) {
        this.order = order;
    }

    public Products getProduct() {
        return product;
    }

    public void setProduct(Products product) {
        this.product = product;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }
}

