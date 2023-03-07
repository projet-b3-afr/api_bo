package dashboard.b3;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.net.URI;
import java.util.List;

@ApplicationScoped
@Path("/api")
public class Api {

    @Inject
    EntityManager entityManager;

    @GET
    @Path("/customers")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getCustomers() {
        return Response.ok(Customers.listAll()).build();

    }

    @PUT
    @Path("/updateCustomer")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @Transactional
    public Response updateCustomer(Customers customer) {
        Customers toUpdate = Customers.findById(customer.customer_id);
        toUpdate.pseudo = customer.pseudo;
        toUpdate.email = customer.email;
        toUpdate.photo = customer.photo;
        return Response.ok(customer).build();
    }

    @GET
    @Path("/products")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getProducts() {
        return Response.ok(Products.listAll()).build();

    }

    @PUT
    @Path("/updateStatus")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @Transactional
    public Response updateStatus(Customers customer) {
        Customers toUpdate = Customers.findById(customer.customer_id);
        toUpdate.status = customer.status;
        return Response.ok(customer).build();
    }

    @POST
    @Path("/addProduct")
    @Consumes(MediaType.APPLICATION_JSON)
    @Transactional
    public Response create(Products product) {
        Products existingProduct = Products.findById(product.product_id);
        if (existingProduct != null) {
            return Response.status(Response.Status.CONFLICT).build(); // Return 409 Conflict
        }

        // If the product doesn't exist, persist it
        Products.persist(product);
        return Response.created(URI.create("/" + product.product_id)).build();
    }
}
