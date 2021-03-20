package com.gustavo.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gustavo.dslearn.entities.Notification;

public interface NotificationRepository extends JpaRepository<Notification, Long>{

}
