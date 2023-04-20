package dashboard.b3;

import com.fasterxml.jackson.annotation.JsonProperty;

public class ProductsCommandesAdd {
    @JsonProperty("id")
    Long id;
    @JsonProperty("quantity")
    Long quantity;
}

