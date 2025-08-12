package com.pqt03.projectspring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pqt03.projectspring.domain.Role;
import com.pqt03.projectspring.domain.User;
import com.pqt03.projectspring.repository.RoleRepository;
import com.pqt03.projectspring.repository.UserRepository;

@Service
public class UserService {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;


    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;

    }

    public String handleHello() {
        return "Hello from service";
    }

    public String createUser() {
        return "create";
    }

    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public List<User> getAllUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public void deleteUserById(long id) {
        this.userRepository.deleteById(id);
    }

    public Role getRoleByName(String name){
        return this.roleRepository.findByName(name);
    }
}
