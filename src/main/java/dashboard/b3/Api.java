package dashboard.b3;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.quarkus.hibernate.orm.panache.PanacheQuery;
import io.quarkus.panache.common.Page;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;


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

    @GET
    @Path("/nbProducts")
    @Produces(MediaType.APPLICATION_JSON)
    public int getNbProducts(@QueryParam("category") @DefaultValue("any") String category) {
        if(Objects.equals(category, "any")){
            return Products.listAll().toArray().length;
        }else {
            return Products.find("categorie",category).list().toArray().length;
        }

    }

    @GET
    @Path("/customer/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getCustomerId(@PathParam("id") Long id) {
        return Response.ok(Customers.findById(id)).build();
    }

    @POST
    @Transactional
    @Path("/addCustomer")
    public Response create(Customers newCustomer) {
        entityManager.merge(newCustomer);
        return Response.ok(newCustomer).build();
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

    @PUT
    @Path("/updateProduct")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @Transactional
    public Response updateProduct(Products product) {
        Products toUpdate = Products.findById(product.product_id);
        toUpdate.name = product.name;
        toUpdate.description = product.description;
        toUpdate.price = product.price;
        toUpdate.promotion = product.promotion;
        toUpdate.photo = product.photo;
        toUpdate.categorie = product.categorie;
        toUpdate.stock = product.stock;
        return Response.ok(product).build();
    }

    @GET
    @Path("/productList")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getProducts() {


        PanacheQuery<Products> query = Products.findAll();

        List<Products> products = query.list();
        return Response.ok(products).build();

    }
    @GET
    @Path("/products")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getProducts(@QueryParam("page") @DefaultValue("1") int page, @QueryParam("category") @DefaultValue("any") String category) {

        if(Objects.equals(category, "any")){
            PanacheQuery<Products> query = Products.findAll();
            query.page(Page.of(page - 1, 20));
            List<Products> products = query.list();
            return Response.ok(products).build();
        }else{
            PanacheQuery<Products> query = Products.find("categorie",category);
            query.page(Page.of(page - 1, 20));
            List<Products> products = query.list();
            return Response.ok(products).build();
        }
    }

    @GET
    @Path("/products/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getProducts(@PathParam("id") Long id) {
        return Response.ok(Products.findById(id)).build();
    }


    @GET
    @Path("/commandes/{customerId}")
    @Produces(MediaType.APPLICATION_JSON)
    @Transactional
    public Response getOrdersWithCustomers(@PathParam("customerId") Long customerId) {
        List<Commandes> commandesList = Commandes.list("customer.customer_id", customerId);
        List<CommandesDto> commandesDtoList = commandesList.stream().map(CommandesDto::fromEntity).collect(Collectors.toList());
        return Response.ok(commandesDtoList).build();
    }

    @GET
    @Path("/productCommande/{orderId}")
    @Produces(MediaType.APPLICATION_JSON)
    @Transactional
    public Response getProductsOfOrder(@PathParam("orderId") Long orderId) {
        List<ProductCommande> productsList = ProductCommande.list("order.order_id", orderId);
        List<ProductCommandeDto> productDtoList = productsList.stream().map(ProductCommandeDto::fromEntity).collect(Collectors.toList());
        return Response.ok(productDtoList).build();
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

    @DELETE
    @Path("/delProduct/{id}")
    @Transactional
    public Response deleteProduct(@PathParam("id") Long id) {
        Products products = Products.findById(id);
        if (products == null) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
        products.delete();
        return Response.status(Response.Status.OK).build();
    }

    @DELETE
    @Path("/delCustomer/{id}")
    @Transactional
    public Response deleteCustomer(@PathParam("id") Long id) {
        Customers customers = Customers.findById(id);
        if (customers == null) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
        customers.delete();
        return Response.status(Response.Status.OK).build();
    }

    @POST
    @Path("/addOrder/{id}")
    @Transactional
    public Response addOrder(@PathParam("id") Long id, String json)throws JsonProcessingException   {

        ObjectMapper mapper = new ObjectMapper();
        List<ProductsCommandesAdd> products = mapper.readValue(json, new TypeReference<>() {});

        Commandes commande = new Commandes();
        commande.customer = Customers.findById(id);
        commande.status = "0";
        commande.dateOrder = new Date();
        commande.employee_id = 0L;


        entityManager.persist(commande);
        entityManager.flush();

        addProductOrder(products,commande);
        return Response.ok(commande).build();
    }
    @Transactional
    public Response addProductOrder(List<ProductsCommandesAdd> products,Commandes commandes) {
        products.forEach(product -> {
            ProductCommande productOrder = new ProductCommande();
            productOrder.order = commandes;
            productOrder.product = Products.findById(product.id);
            productOrder.quantity = product.quantity;
            entityManager.persist(productOrder);
            Products change = Products.findById(product.id);
            change.stock = change.stock - product.quantity;
        });
        entityManager.flush();

        return Response.ok("productOrderList").build();
    }

}
