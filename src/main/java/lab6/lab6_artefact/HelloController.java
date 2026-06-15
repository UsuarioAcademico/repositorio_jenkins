package lab6.lab6_artefact;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class HelloController extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(HelloController.class);
    } 

    public static void main(String[] args) {
        SpringApplication.run(HelloController.class, args);
    }

    @GetMapping("/")
    public String home() {
        return "Olá, Mundo do SCM ADS Osório!";
    }
}