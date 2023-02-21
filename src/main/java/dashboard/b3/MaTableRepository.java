package dashboard.b3;

import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class MaTableRepository implements PanacheRepository<Customers> {


}
