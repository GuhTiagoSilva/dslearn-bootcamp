package com.gustavo.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gustavo.dslearn.entities.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {

}
