package com.gustavo.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gustavo.dslearn.entities.Lesson;

public interface LessonRepository extends JpaRepository<Lesson, Long> {

}
