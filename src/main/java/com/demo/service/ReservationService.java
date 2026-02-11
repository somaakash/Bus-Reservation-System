package com.demo.service;

import java.util.List;

import com.demo.model.Reservation;

public interface ReservationService {
	public abstract List<Reservation> getUserReservations(Long userId);
	public abstract List<Reservation> getAllReservations();
	public abstract boolean bookReservation(Reservation reservation);
	public abstract void cancelReservation(Long reservationId);
   

}
