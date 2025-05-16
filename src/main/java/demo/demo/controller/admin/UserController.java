package demo.demo.controller.admin;

import java.util.List;

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

        List<User> users = this.userService.GetAllUser();


        model.addAttribute("users", users);
        return "admin/user/show";
    }
}
