package dashboard.b3;


import io.quarkus.hibernate.orm.panache.PanacheQuery;
import io.quarkus.panache.common.Page;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.*;
import java.util.stream.Collectors;


@ApplicationScoped
@Path("/api")
public class Api {

    @Inject
    EntityManager entityManager;

    //Récupération de la liste de tous les customers
    @GET
    @Path("/customers")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getCustomers() {
        return Response.ok(Customers.listAll()).build();

    }

    //Ajout du customer à notre table lors de l'inscription depuis l'application
    @POST
    @Transactional
    @Path("/addCustomer")
    public Response create(Customers newCustomer) {
        entityManager.merge(newCustomer);
        return Response.ok(newCustomer).build();
    }


    //Get des infos d'un customer basés sur son customer_id
    @GET
    @Path("/customer/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getCustomerId(@PathParam("id") Long id) {

        return Response.ok(Customers.findById(id)).build();
    }

    //Route pour update les informations d'un customer
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
        toUpdate.password = customer.password;
        return Response.ok(customer).build();
    }

    //Route pour la suppression d'un customer via son id
    @DELETE
    @Path("/delCustomer/{id}")
    @Transactional
    public Response deleteCustomer(@PathParam("id") Long id) {
        Customers customers = Customers.findById(id);
        if (customers == null) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }

        //On supprime les favoris associés à lui
        PanacheQuery<Favorite> fav = Favorite.find("customer", customers);
        if (fav.list().size() > 0) {
            Favorite.delete("customer", customers);
        }


        //On supprime les commandes associés à lui
        PanacheQuery<Commandes> order = Commandes.find("customer", customers);
        if (order.list().size() > 0) {
            order.list().forEach(ord -> {
                ProductCommande.delete("order", ord);
            });
            Commandes.delete("customer", customers);
        }

        customers.delete();
        entityManager.flush();
        return Response.status(Response.Status.OK).build();
    }


    //Mettre à jour le status du customer
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








    //Get du nombre de produits pour l'affichage sur plusieurs pages, avec possibilités de get via la catégorie
    @GET
    @Path("/nbProducts")
    @Produces(MediaType.APPLICATION_JSON)
    public int getNbProducts(@QueryParam("category") @DefaultValue("any") String category) {
        if (Objects.equals(category, "any")) {
            return Products.listAll().toArray().length;
        } else {
            return Products.find("categorie", category).list().toArray().length;
        }

    }



    //Route pour update les informations d'un produit
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

    //Récupération de tout les produits en 1 seul fois pour l'application
    @GET
    @Path("/productList")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getProducts() {


        PanacheQuery<Products> query = Products.findAll();

        List<Products> products = query.list();
        return Response.ok(products).build();

    }


    //Récupération des produits par pages de 20 éléments avec la catégorie si voulu
    @GET
    @Path("/products")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getProducts(@QueryParam("page") @DefaultValue("1") int page, @QueryParam("category") @DefaultValue("any") String category) {

        if (Objects.equals(category, "any")) {
            PanacheQuery<Products> query = Products.findAll();
            query.page(Page.of(page - 1, 20));
            List<Products> products = query.list();
            return Response.ok(products).build();
        } else {
            PanacheQuery<Products> query = Products.find("categorie", category);
            query.page(Page.of(page - 1, 20));
            List<Products> products = query.list();
            return Response.ok(products).build();
        }
    }


    //Get les informations d'un produit
    @GET
    @Path("/products/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getProducts(@PathParam("id") Long id) {
        return Response.ok(Products.findById(id)).build();
    }


    //Ajouter un nouveau produit à la base de données de type Products
    @POST
    @Transactional
    @Path("/addProduct")
    public Response create(Products newProduct) {
        entityManager.merge(newProduct);
        return Response.ok(newProduct).build();

    }


    //Mettre à jour les prix d'un produit
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

    //Supprimer un produit via son id
    @DELETE
    @Path("/delProduct/{id}")
    @Transactional
    public Response deleteProduct(@PathParam("id") Long id) {
        Products products = Products.findById(id);
        if (products == null) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }

        // Suppression des commandes de ce produit
        PanacheQuery<ProductCommande> productCommande = ProductCommande.find("product", products);
        productCommande.list().forEach(p->{
            PanacheQuery<Commandes> order = Commandes.find("order_id", p.order.order_id);
            if (order.list().size() > 0) {
                order.list().forEach(ord -> {
                    ProductCommande.delete("order", ord);
                    PanacheQuery<Favorite> fav = Favorite.find("product", p.product);
                    if (fav.list().size() > 0) {
                        fav.list().forEach(f->{
                            Products produit = new Products();
                            produit.stock = 0L;
                            produit.name = "";
                            produit.description = "";
                            produit.price = 0F;
                            produit.categorie = "";
                            produit.photo = "";
                            produit.promotion = 0L;

                            produit.persist();

                            f.product = produit;
                            f.persist();
                        });
                    }

                });
            }
            Commandes.delete("order_id", p.order.order_id);
        });

        products.delete();
        return Response.status(Response.Status.OK).build();
    }





    //Récupération des items d'une commande via l'id de la commande
    @GET
    @Path("/productCommande/{orderId}")
    @Produces(MediaType.APPLICATION_JSON)
    @Transactional
    public Response getProductsOfOrder(@PathParam("orderId") Long orderId) {
        List<ProductCommande> productsList = ProductCommande.list("order.order_id", orderId);
        List<ProductCommandeDto> productDtoList = productsList.stream().map(ProductCommandeDto::fromEntity).collect(Collectors.toList());
        return Response.ok(productDtoList).build();
    }

    //Get les informations d'un customer basés sur son customer_id
    @GET
    @Path("/commandes/{customerId}")
    @Produces(MediaType.APPLICATION_JSON)
    @Transactional
    public Response getOrdersWithCustomers(@PathParam("customerId") Long customerId) {
        List<Commandes> commandesList = Commandes.list("customer.customer_id", customerId);
        List<CommandesDto> commandesDtoList = commandesList.stream().map(CommandesDto::fromEntity).collect(Collectors.toList());
        return Response.ok(commandesDtoList).build();
    }


    //Route pour passer la commande d'articles
    @POST
    @Path("/addOrder/{id}")
    @Transactional
    public Response addOrder(@PathParam("id") Long id, List<ProductsCommandesAdd> json) {
        List<ProductsCommandesAdd> products = json;
        Commandes commande = new Commandes();
        commande.customer = Customers.findById(id);
        commande.status = "0";
        commande.dateOrder = new Date();
        commande.employee_id = 0L;

        entityManager.persist(commande);
        entityManager.flush();

        addProductOrder(products, commande);
        return Response.ok(commande).build();
    }


    //Ajoute un produit à la commande
    @Transactional
    public Response addProductOrder(List<ProductsCommandesAdd> products, Commandes commandes) {
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


    //Ajoute le produit à la liste des favoris du client
    @POST
    @Path("/addFav/{id}")
    @Transactional
    public Response addFavorite(@PathParam("id") Long id, FavoriteAdd favorite) {

        Favorite favoriteAdd = new Favorite();
        favoriteAdd.customer = Customers.findById(id);
        favoriteAdd.product = Products.findById(favorite.product_id);
        entityManager.persist(favoriteAdd);
        entityManager.flush();
        return Response.ok().build();
    }

    //Suppression du produit dans la liste du client
    @DELETE
    @Path("/delFav/{id}")
    @Transactional
    public Response deleteFavorite(@PathParam("id") Long id, @QueryParam("product") Long product_id) {
        PanacheQuery<Favorite> favoriteList = Favorite.find("customer_id = ?1 and product_id = ?2", id, product_id);
        favoriteList.list().forEach(fav -> {
            if (fav != null) {
                fav.delete();
            }
        });
        return Response.ok("objet delete").build();
    }

    //Récupération des produits que le customers à mit en favoris via son id
    @GET
    @Path("/getFav/{id}")
    @Transactional
    public Response getFavCustomer(@PathParam("id") Long id){
        List<Favorite> favorite = Favorite.list("customer.customer_id", id);
        List<FavoriteDto> favoriteList = favorite.stream().map(FavoriteDto::fromEntity).collect(Collectors.toList());
        return Response.ok(favoriteList).build();
    }




}
