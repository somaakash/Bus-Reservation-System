package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.BusDao;
import com.demo.dao.ReservationDao;
import com.demo.model.Bus;
import com.demo.model.Reservation;
import com.demo.service.ReservationService;

@Service
@Transactional
public class ReservationServiceImpl implements ReservationService {

    @Autowired
    private ReservationDao reservationDao;

    @Autowired
    private BusDao busDao;

    @Override
    public boolean bookReservation(Reservation reservation) {


    	    Bus bus = busDao.findById(reservation.getBus().getBusId()).orElse(null);
    	            
    	    if (bus == null) {
    	        return false;
    	    }

    	    if (bus.getAvailableSeats() < reservation.getSeatsRequested()) {
    	        return false;
    	    }

    	    bus.setAvailableSeats(
    	        bus.getAvailableSeats() - reservation.getSeatsRequested()
    	    );

    	    reservation.setBus(bus);

    	    busDao.save(bus);
    	    reservationDao.save(reservation);

    	    return true; 
    	}

    @Override
    public void cancelReservation(Long reservationId) {

        Reservation reservation =
        		  reservationDao.findById(reservationId).orElse(null);

        if (reservation != null) {
            Bus bus = reservation.getBus();
            bus.setAvailableSeats(
                bus.getAvailableSeats() + reservation.getSeatsRequested()
            );

            reservationDao.delete(reservation);
            busDao.save(bus);
        }
    }

    @Override
    public List<Reservation> getUserReservations(Long userId) {
        return reservationDao.findByUser_UserId(userId);
    }

    @Override
    public List<Reservation> getAllReservations() {
        return reservationDao.findAll();
    }
}
