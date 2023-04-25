Pour lancer le back il faut:
    
    - Java 17 sur la machine
    - Etre connecté au vpn 
    - Avoir mit à jour dans le application.properties les valeurs pour l'username et le mot de passe de la bdd du back
        Pour cela dans le back dans mysql faire: 

                   1) CREATE USER 'username'@'ip_de_sa_machine' IDENTIFIED BY 'password';
                   2) GRANT ALL PRIVILEGES ON projet_base.* TO 'username'@'ip_de_sa_machine';        
                   3) FLUSH PRIVILEGES;

application.properties:

                quarkus.datasource.username=remote2  (changer par son username)
                quarkus.datasource.password=root    (changer par son mdp)
                
                quarkus.datasource.jdbc.url=jdbc:mysql://172.16.70.220:3306/projet_base  (changer par son ip)