package dashboard.b3;


import org.modelmapper.ModelMapper;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.net.URI;

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
    @GET
    @Path("/test")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getProductds() {
        return Response.ok(Commande.listAll()).build();

    }

    @GET
    @Path("/products/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getProducts(@PathParam("id") Long id) {
        return Response.ok(Products.findById(id)).build();
    }

    @GET
    @Path("/listeCommandes/{id}")
    public Response getCommandeUser(@PathParam("id") Long id){
        return Response.ok(Commandes.findById(id)).build();
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
    @Transactional
    @Path("/addProduct")
    public Response create(Products newProduct) {
       entityManager.merge(newProduct);
       return Response.ok(newProduct).build();

    }

    @PUT
    @Path("/updatePrice")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @Transactional
    public Response updateStatus(Products products) {
        Products toUpdate = Products.findById(products.product_id);
        toUpdate.price = products.price;
        return Response.ok(products).build();
    }
}
