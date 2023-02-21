package dashboard.b3;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

@ApplicationScoped
@Path("/api")
public class Api {

    @Inject
    RestService restService;

    @Inject
    MaTableRepository maTableRepository;


    @GET
    @Path("/customers")
    @Produces(MediaType.APPLICATION_JSON)
    @Transactional
    public List<Customers> getMaTable() {
        return maTableRepository.listAll();

    }
}
