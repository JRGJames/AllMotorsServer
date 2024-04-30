package alpha.allmotors;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("alpha.allmotors")
public class AllMotorsServerApplication {

    public static void main(String[] args) {
		SpringApplication.run(AllMotorsServerApplication.class, args);
	}
}
	