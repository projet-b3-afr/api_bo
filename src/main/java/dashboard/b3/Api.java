package dashboard.b3;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

@ApplicationScoped
@Path("/api")
public class Api {



    @GET
    @Path("/customers")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getCustomers() {
        return Response.ok(Customers.listAll()).build();

    }

    @GET
    @Path("/products")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getProducts() {
        return Response.ok(Products.listAll()).build();

    }
}
