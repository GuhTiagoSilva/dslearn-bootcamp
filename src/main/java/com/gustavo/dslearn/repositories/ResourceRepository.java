package com.gustavo.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gustavo.dslearn.entities.Resource;

public interface ResourceRepository extends JpaRepository<Resource, Long> {

}
