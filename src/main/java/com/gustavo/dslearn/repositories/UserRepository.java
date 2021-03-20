package com.gustavo.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gustavo.dslearn.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {

}
