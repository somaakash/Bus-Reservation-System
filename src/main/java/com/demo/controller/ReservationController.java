package com.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.demo.model.Reservation;
import com.demo.service.ReservationService;

@Controller
//@RequestMapping("/reservation")
public class ReservationController {
    @Autowired
    private ReservationService reservationService;

    @GetMapping("/book")
    public String bookPage() {
        return "bookReservation";
    }

    @PostMapping("/book")
    public String book(Reservation reservation, Model model) {
        boolean success = reservationService.bookReservation(reservation);
        if (success) {
            return "reservationsuccess";
        } else {
            model.addAttribute("error", "Seats not available");
            return "bookReservation";
        }
    }

    @GetMapping("/admin/my-reservations")
    public String reservations(Model model) {
        model.addAttribute("reservations", reservationService.getAllReservations());
        return "reservationList";
}
}
