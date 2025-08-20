package com.pqt03.projectspring.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.pqt03.projectspring.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    User save(User user);

    User findByEmail(String email);

    List<User> findAll();

    User findById(long id);

    boolean existsByEmail(String email);

}
