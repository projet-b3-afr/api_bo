package dashboard.b3.authentification;



import dashboard.b3.Customers;
import io.quarkus.hibernate.orm.panache.PanacheQuery;
import io.quarkus.security.identity.SecurityIdentity;

import javax.annotation.security.RolesAllowed;
import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/jwt")
@ApplicationScoped
public class JwtRessource {

    @Inject
    JwtService service;

    @Inject
    SecurityIdentity identity;

    @Inject
    EntityManager entityManager;

    @POST
    @Produces(MediaType.TEXT_PLAIN)
    public Response getJwt(Customers customer) {
        PanacheQuery<Customers> user = Customers.find("email = ?1 and password = ?2", customer.email, customer.password);
        if(user.singleResult().status == 3){
            String jwt = service.generateJwt();
            return Response.ok(jwt).build();
        }
        return Response.status(401).build();
    }

    @GET
    @Path("/checkJwt")
    @RolesAllowed({"admin"})
    public boolean checkJwt() {
        return true;

    }

}
