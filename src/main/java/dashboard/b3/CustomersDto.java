package dashboard.b3;


//Definition de la classe DTO pour le customer afin de le créer facilement
public class CustomersDto {


        public Long customer_id;
        public String pseudo;
        public String photo;
        public String email;
        public Long status;

        public String password;

        public static CustomersDto fromEntity(Customers customer) {
            CustomersDto customerDto = new CustomersDto();
            customerDto.customer_id = customer.customer_id;
            customerDto.pseudo = customer.pseudo;
            customerDto.photo = customer.photo;
            customerDto.email = customer.email;
            customerDto.status = customer.status;
            customerDto.password = customer.password;
            return customerDto;
        }


}
