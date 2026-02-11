package com.demo.service;

import java.util.List;

import com.demo.model.Booking;
import com.demo.model.User;

public interface BookingService {
	void saveBooking(Booking booking);
    List<Booking> getBookingsByUser(User user);
    void cancelBooking(Long id);
    List<Booking> getAllBookings();
    Booking getBookingById(Long bookingId);
}
