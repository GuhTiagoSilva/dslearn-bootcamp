package com.gustavo.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gustavo.dslearn.entities.Section;

public interface SectionRepository extends JpaRepository<Section, Long>{

}
