package MSPR.mspr;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.event.ApplicationReadyEvent;

@SpringBootApplication
public class MsprApplication {

	public static void main(String[] args) {
		SpringApplication.run(MsprApplication.class, args);
		System.out.println("Connexion à la base de données établie avec succès!");
	}




}
