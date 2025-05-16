package demo.demo.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import demo.demo.entity.User;
import demo.demo.service.UserService;
import jakarta.websocket.server.PathParam;

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


    @GetMapping("/admin/user/update/{id}")
    public String getUpdateUser(Model model, @PathVariable long id){
        User userHienTai = this.userService.GetUserById(id);
        model.addAttribute("user", userHienTai);
        return "admin/user/update";
    }

    @PostMapping("/admin/user/update")
    public String updateUser(@ModelAttribute("user") User user){
        User userHienTai = this.userService.GetUserById(user.getId());
        if(userHienTai !=null){
            userHienTai.setEmail(user.getEmail());
            userHienTai.setName(user.getName());
            userHienTai.setPassword(user.getPassword());

            this.userService.SaveUser(userHienTai);
        }
        return "redirect:/admin/user";
    }
}
