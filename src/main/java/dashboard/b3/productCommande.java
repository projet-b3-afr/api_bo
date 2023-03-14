package dashboard.b3;


import io.quarkus.hibernate.orm.panache.PanacheEntityBase;

import javax.persistence.*;


@Entity
@Table(name = "product_orders")
public class productCommande extends PanacheEntityBase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Number product_order_id;

    @Column
    public Number order_id;

    @Column
    public Number product_id;

    @Column
    public Number quantity;

    public Number getProduct_order_id() {
        return product_order_id;
    }

    public void setProduct_order_id(Number product_order_id) {
        this.product_order_id = product_order_id;
    }

    public Number getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Number order_id) {
        this.order_id = order_id;
    }

    public Number getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Number product_id) {
        this.product_id = product_id;
    }

    public Number getQuantity() {
        return quantity;
    }

    public void setQuantity(Number quantity) {
        this.quantity = quantity;
    }
}

