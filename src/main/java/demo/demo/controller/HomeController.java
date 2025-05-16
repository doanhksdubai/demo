package demo.demo.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@RestController
public class HomeController {
    
    @GetMapping("/home")
    public String getHomePage() {
        return "Hello Home page";
    }

    @GetMapping("/product")
    public String getProductPage(){
        return "Hello product";
    }
    
}
