package rocio.backend.app;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/v1")
@RequiredArgsConstructor
@CrossOrigin(origins = {"http://localhost:4200"})
public class AppController {

    @PostMapping(value = "app")
    public String welcome() {
        return "Welcome from secure endpoint";
    }

    @GetMapping(value = "forAdmin")
    public String forAdmin() {
        return "This URL is only accesible to admin";
    }

    @GetMapping(value = "forGerente")
    public String forGerente() {
        return "This URL is only accesible to gerente";
    }

    @GetMapping(value = "forJefe")
    public String forJefe() {
        return "This URL is only accesible to jefe";
    }

}
