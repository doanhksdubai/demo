package demo.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import demo.demo.entity.User;
import demo.demo.service.UserService;

@Controller
public class UserController {

    private final UserService userService;
    
    
    public UserController(UserService userService) {
        this.userService = userService;
    }


    @GetMapping("/admin/user")
    public String getUserPage(Model model){

        User user = userService.GetUserById(1);

        model.addAttribute("user", user);
        return "admin/user/show";
    }
}
