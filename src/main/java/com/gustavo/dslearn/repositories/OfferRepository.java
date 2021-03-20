package com.gustavo.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gustavo.dslearn.entities.Offer;

public interface OfferRepository extends JpaRepository<Offer, Long> {

}
