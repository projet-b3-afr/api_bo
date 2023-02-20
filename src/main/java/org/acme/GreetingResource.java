package org.acme;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;

@ApplicationScoped
@Path("/api")
public class GreetingResource {
    
    @Inject
    RestService restService;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String url(@QueryParam("url") String url, @HeaderParam("rest-authorization") String header) throws 
    NoSuchAlgorithmException, KeyManagementException {
        return restService.getVersions(new Versions(url));
    }
}