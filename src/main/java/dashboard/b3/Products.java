package dashboard.b3;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;

import javax.persistence.*;

@Entity
@Table(name = "products")
public class Products extends PanacheEntityBase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long product_id;
    @Column
    private String name;
    @Column
    private String description;
    @Column
    private Float price;
    @Column
    private Long promotion;
    @Column
    private Long reduction;
    @Column
    private String categorie;
    @Column
    private Long stock;


    public Long getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Long product_id) {
        this.product_id = product_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Long getPromotion() {
        return promotion;
    }

    public void setPromotion(Long promotion) {
        this.promotion = promotion;
    }

    public Long getReduction() {
        return reduction;
    }

    public void setReduction(Long reduction) {
        this.reduction = reduction;
    }

    public String getCategorie() {
        return categorie;
    }

    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }

    public Long getStock() {
        return stock;
    }

    public void setStock(Long stock) {
        this.stock = stock;
    }
}