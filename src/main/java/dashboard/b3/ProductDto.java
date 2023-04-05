package dashboard.b3;

public class ProductDto {

    public Long product_id;

    public String name;
    public String description;
    public Float price;
    public Long promotion;
    public String photo;
    public String categorie;
    public Long stock;

    public static ProductDto fromEntity(Products products) {
        ProductDto productsDto = new ProductDto();
        productsDto.product_id = products.product_id;
        productsDto.name = products.name;
        productsDto.description = products.description;
        productsDto.price = products.price;
        productsDto.promotion = products.promotion;
        productsDto.photo = products.photo;
        productsDto.categorie = products.categorie;
        productsDto.stock = products.stock;
        return productsDto;
    }
}
