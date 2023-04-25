package dashboard.b3.authentification;

import io.smallrye.jwt.build.Jwt;

import javax.inject.Singleton;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

@Singleton
public class JwtService {

    //Generation du jwt qui donne le role admin
    public String generateJwt() {

        Set<String> group = new HashSet<>(
                Arrays.asList("admin")
        );

        return Jwt.issuer("dasboard-jwt")
                .subject("dasboard-jwt")
                .groups(group)
                .expiresAt(System.currentTimeMillis() + 3600)
                .sign();


    }
}
