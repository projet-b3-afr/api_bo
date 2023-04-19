package dashboard.b3;


public class ProductCommandeDto {
    public Long product_order_id;
    public CommandesDto order;
    public ProductDto product;
    public Long quantity;

    public static ProductCommandeDto fromEntity(ProductCommande productCommande) {
        ProductCommandeDto productCommandeDto = new ProductCommandeDto();
        productCommandeDto.product_order_id = productCommande.product_order_id;
        productCommandeDto.product = ProductDto.fromEntity(productCommande.product);
        productCommandeDto.quantity = productCommande.quantity;
        return productCommandeDto;
    }
}
