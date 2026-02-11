package com.demo.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.model.Booking;
import com.demo.model.Feedback;
import com.demo.model.User;
import com.demo.service.BookingService;
import com.demo.service.FeedbackService;

import jakarta.servlet.http.HttpSession;

@Controller
public class FeedbackController {

    @Autowired
    private BookingService bookingService;

    @Autowired
    private FeedbackService feedbackService;
    
    // 1️⃣ show feedback form

    @GetMapping("/add-feedback")
    public String addFeedback(HttpSession session, Model model) {

        User user = (User) session.getAttribute("loggedUser");
        if (user == null) {
            return "redirect:/login";
        }

        // Get bookings of logged-in user
        List<Booking> bookings = bookingService.getBookingsByUser(user);

        model.addAttribute("bookings", bookings);

        return "addFeedback";
    }

   
    //submit feedback
    
    @PostMapping("/save-feedback")
    public String submitFeedback(
            @RequestParam Long bookingId,
            @RequestParam String feedbackText,
            @RequestParam
            @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
            LocalDate journeyDate,
            HttpSession session) {

        User user = (User) session.getAttribute("loggedUser");
        if (user == null) {
            return "redirect:/login";
        }

        // Get booking using bookingId
        Booking booking = bookingService.getBookingById(bookingId);

        // Create feedback object
        Feedback feedback = new Feedback();
        feedback.setUser(user);
        feedback.setBus(booking.getBus());
        feedback.setFeedbackText(feedbackText);
        feedback.setJourneyDate(journeyDate);

        // Save feedback
        feedbackService.saveFeedback(feedback);

        return "feedbackSuccess";
    }

   
    //(admin)view all feedback
   
    @GetMapping("/feedback-list")
    public String viewFeedbackList(Model model) {

        List<Feedback> feedbacks = feedbackService.getAllFeedback();
        model.addAttribute("feedbacks", feedbacks);

        return "feedbackList";
    }
}
