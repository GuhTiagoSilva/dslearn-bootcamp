package com.gustavo.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gustavo.dslearn.entities.Enrollment;
import com.gustavo.dslearn.entities.pk.EnrollmentPK;

public interface EnrollmentRepository extends JpaRepository<Enrollment, EnrollmentPK> {

}
