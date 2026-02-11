package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.BookingDao;
import com.demo.model.Booking;
import com.demo.model.User;

@Service
public class BookingServiceImpl implements BookingService {

    @Autowired
    private BookingDao bookingDao;  

    @Override
    public void saveBooking(Booking booking) {
        bookingDao.save(booking);    
    }

    @Override
    public List<Booking> getBookingsByUser(User user) {
        return bookingDao.findByUser(user);  
    }

    @Override
    public void cancelBooking(Long id) {
        Booking booking = bookingDao.findById(id).orElse(null); 
        if (booking != null) {
            booking.setStatus("CANCELLED");
            bookingDao.save(booking); 
        }
    }

	@Override
	public List<Booking> getAllBookings() {
		
		return bookingDao.findAll();
	}

	@Override
	public Booking getBookingById(Long bookingId) {
		
		return bookingDao.findById(bookingId).orElse(null);
	}
}
