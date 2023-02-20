package org.acme;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.ws.rs.client.Client;

@ApplicationScoped
public class RestService {
    @Inject
    private Client client;
    
    public String getVersions(Versions versions) {
        return client.target(versions.url).request().get(String.class);
    }
}
