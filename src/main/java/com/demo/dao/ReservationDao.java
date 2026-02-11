package com.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.model.Reservation;

public interface ReservationDao extends JpaRepository<Reservation, Long> {
	List<Reservation> findByUser_UserId(Long userid);
	//This is used to View Reservations for a specific user.
}
