package dashboard.b3;

import com.fasterxml.jackson.annotation.JsonProperty;

//Definition de la classe pour ajouter un produit à sa commande
public class ProductsCommandesAdd {
    @JsonProperty("id")
    Long id;
    @JsonProperty("quantity")
    Long quantity;
}

