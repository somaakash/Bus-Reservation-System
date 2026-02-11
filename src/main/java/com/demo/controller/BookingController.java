package com.demo.controller;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.demo.model.Booking;
import com.demo.model.Bus;
import com.demo.model.User;
import com.demo.service.BookingService;
import com.demo.service.BusService;

import jakarta.servlet.http.HttpSession;

@Controller
public class BookingController {

    @Autowired
    private BusService busService;

    @Autowired
    private BookingService bookingService;

    //Open Booking Form
    @GetMapping("/book-ticket/{busId}")
    public String bookTicketPage(@PathVariable Long busId,
                                 Model model,
                                 HttpSession session) {

        User user = (User) session.getAttribute("loggedUser");
        if (user == null) {
            return "redirect:/login";
        }

        Bus bus = busService.getBusById(busId);
        if (bus == null) {
            return "redirect:/search-buses";
        }

        model.addAttribute("bus", bus);
        model.addAttribute("booking", new Booking());

        return "bookTicket";   // bookTicket.jsp
    }

    // Confirm Booking then Save then Show Success Page
    @PostMapping("/confirm-booking")
    public String confirmBooking(@ModelAttribute Booking booking,
                                 @RequestParam Long busId,
                                 HttpSession session,
                                 Model model) {

        User user = (User) session.getAttribute("loggedUser");
        if (user == null) {
            return "redirect:/login";
        }

        Bus bus = busService.getBusById(busId);
        if (bus == null) {
            return "redirect:/search-buses";
        }

        //Seat availability check
        if (booking.getSeatsBooked() <= 0 ||
            bus.getAvailableSeats() < booking.getSeatsBooked()) {

            model.addAttribute("error", "Not enough seats available");
            model.addAttribute("bus", bus);
            return "bookTicket";
        }

        //Update available seats
        bus.setAvailableSeats(bus.getAvailableSeats() - booking.getSeatsBooked());
        busService.saveBus(bus);

        //Save booking
        booking.setBus(bus);
        booking.setUser(user);
        booking.setBookingDate(LocalDateTime.now());
        booking.setStatus("BOOKED");

        bookingService.saveBooking(booking);

        //send booking data to success page
        model.addAttribute("booking", booking);

        //SHOW SUCCESS PAGE
        return "reservationsuccess";   // reservationsuccess.jsp
    }

    //View My Reservations
    @GetMapping("/my-reservations")
    public String myReservations(HttpSession session, Model model) {

        User user = (User) session.getAttribute("loggedUser");
        if (user == null) {
            return "redirect:/login";
        }

        List<Booking> reservations =
                bookingService.getBookingsByUser(user);

        model.addAttribute("reservations", reservations);

        return "myreservationList";   // myreservationList.jsp
    }

    //Cancel Booking
    @GetMapping("/cancel-booking/{id}")
    public String cancelBooking(@PathVariable Long id,
                                HttpSession session) {

        User user = (User) session.getAttribute("loggedUser");
        if (user == null) {
            return "redirect:/login";
        }

        bookingService.cancelBooking(id);

        return "redirect:/my-reservations";
    }
    @PostMapping("/submit-feedback")
    public String submitFeedback(HttpSession session) {

        User user = (User) session.getAttribute("loggedUser");
        if (user == null) {
            return "redirect:/login";
        }

        

        return "feedbackSuccess";
    }

}
