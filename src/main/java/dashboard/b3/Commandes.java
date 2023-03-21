package dashboard.b3;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "orders")
public class Commandes extends PanacheEntityBase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Number order_id;

    @Column
    public Date date_order;

    @Column
    public Number customer_id;

    @Column
    public boolean status;

    @Column
    public Number employee_id;



    public Number getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Number order_id) {
        this.order_id = order_id;
    }

    public Date getDate_order() {
        return date_order;
    }

    public void setDate_order(Date date_order) {
        this.date_order = date_order;
    }

    public Number getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(Number customer_id) {
        this.customer_id = customer_id;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Number getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(Number employee_id) {
        this.employee_id = employee_id;
    }


}
