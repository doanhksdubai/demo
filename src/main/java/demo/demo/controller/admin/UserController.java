package demo.demo.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

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

    @GetMapping("/admin/user/create")
    public String getCreateUser(Model model){
        model.addAttribute("user", new User());
        return "admin/user/create";
    }
    
    @PostMapping("/admin/user/create")
    public String createUser(@ModelAttribute("user") User user){
        this.userService.SaveUser(user);
        return "redirect:/admin/user";
    }
}
