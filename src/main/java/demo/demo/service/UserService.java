package demo.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import demo.demo.entity.User;
import demo.demo.repository.UserRepository;

@Service
public class UserService {

    private final UserRepository userRepository;

    
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }



    public User GetUserById(long id){
       return this.userRepository.findById(id);
    }


   public List<User> GetAllUser(){
    return this.userRepository.findAll();
   }
}
