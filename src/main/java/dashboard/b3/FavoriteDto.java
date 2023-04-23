package dashboard.b3;

public class FavoriteDto {


    public Long favorite_id;

    public CustomersDto customer;

    public ProductDto product;


    public static FavoriteDto fromEntity(Favorite favorite) {
        FavoriteDto FavDto = new FavoriteDto();
        FavDto.favorite_id = favorite.favorite_id;
        FavDto.customer = CustomersDto.fromEntity(favorite.customer);
        FavDto.product = ProductDto.fromEntity(favorite.product);
        return FavDto;
    }

}
