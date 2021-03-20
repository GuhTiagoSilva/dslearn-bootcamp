package com.gustavo.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gustavo.dslearn.entities.Reply;

public interface ReplyRepository extends JpaRepository<Reply, Long> {

}
