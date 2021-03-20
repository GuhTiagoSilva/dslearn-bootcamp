package com.gustavo.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gustavo.dslearn.entities.Course;

public interface CourseRepository extends JpaRepository<Course, Long> {

}
