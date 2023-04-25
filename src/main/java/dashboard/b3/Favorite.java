package dashboard.b3;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;

import javax.persistence.*;


//Definition via ORM de la table favorite
@Entity
@Table(name = "favorite")
public class Favorite extends PanacheEntityBase {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long favorite_id;

    @OneToOne
    @JoinColumn(name = "customer_id")
    public Customers customer;
    @OneToOne
    @JoinColumn(name = "product_id")
    public Products product;

    public Long getFavorite_id() {
        return favorite_id;
    }

    public void setFavorite_id(Long favorite_id) {
        this.favorite_id = favorite_id;
    }

    public Customers getCustomer() {
        return customer;
    }

    public void setCustomer(Customers customer) {
        this.customer = customer;
    }

    public Products getProduct() {
        return product;
    }

    public void setProduct(Products product) {
        this.product = product;
    }
}
