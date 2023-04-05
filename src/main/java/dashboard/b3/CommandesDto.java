package dashboard.b3;

import java.util.Date;

public class CommandesDto {

    public Long order_id;
    public Date dateOrder;
    public CustomersDto customer;
    public String status;
    public Long employeeId;

    public static CommandesDto fromEntity(Commandes commandes) {
        CommandesDto commandesDto = new CommandesDto();
        commandesDto.order_id = commandes.order_id;
        commandesDto.dateOrder = commandes.dateOrder;
        commandesDto.customer = CustomersDto.fromEntity(commandes.customer);
        commandesDto.status = commandes.status;
        commandesDto.employeeId = commandes.employee_id;
        return commandesDto;
    }
}
