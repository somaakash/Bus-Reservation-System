package com.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.demo.model.Admin;
import com.demo.service.AdminService;
import com.demo.service.BookingService;
import com.demo.service.ReservationService;

@Controller
//@RequestMapping("/admin")
public class AdminController {

    
    @Autowired
    private AdminService adminService;
    @Autowired
    private BookingService bookingService;

    // Open admin login page
    @GetMapping("/admin-login")
    public String showAdminLoginPage() {
        return "adminLogin";   // adminLogin.jsp
    }

    // Process admin login
    @PostMapping("/admin-login")
    public String adminLogin(
            @RequestParam String username,
            @RequestParam String password,
            Model model) {

        Admin admin = adminService.loginAdmin(username, password);

        if (admin != null) {
            model.addAttribute("admin", admin);
            return "adminDashboard";   // adminDashboard.jsp
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "adminLogin";
        }
        
        
    }
 // View all reservations (ADMIN)
    @GetMapping("/admin-reservations")
    public String viewAllReservations(Model model) {

        
        model.addAttribute(
            "reservations",
            bookingService.getAllBookings()
        );

        return "adminReservationList";
    }
    @GetMapping("/admin-dashboard")
    public String adminDashboard() {
        return "adminDashboard";
    }
}
