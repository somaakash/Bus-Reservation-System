package com.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.demo.model.Route;
import com.demo.service.RouteService;

@Controller
//@RequestMapping("/route")
public class RouteController {

    @Autowired
    private RouteService routeService;

    //Show all routes
    @GetMapping("/route-list")
    public String listRoutes(Model model) {
        model.addAttribute("routes", routeService.getAllroutes());
        return "routeList";
    }

    //Open add route page
    @GetMapping("/add-route")
    public String showAddRoutePage() {
        return "addRoute";
    }

    //Save new route
    @PostMapping("/add-route")
    public String addRoute(@ModelAttribute Route route) {
        routeService.addRoute(route);
        return "redirect:/route-list";
    }

    //Delete route
    @GetMapping("/delete-route/{id}")
    public String deleteRoute(@PathVariable Long id) {
        routeService.deleteRoute(id);
        return "redirect:/route-list";
    }
    @GetMapping("/dashboard")
    public String adminDashboard() {
        return "adminDashboard";
    }
    
 // Open edit route page
    @GetMapping("/edit-route/{id}")
    public String editRoutePage(@PathVariable Long id, Model model) {
        Route route = routeService.getRouteById(id);
        model.addAttribute("route", route);
        return "editRoute";   // editRoute.jsp
    }
    //Update route
    @PostMapping("/update-route")
    public String updateRoute(@ModelAttribute Route route) {
        routeService.updateRoute(route);
        return "redirect:/route-list";
    }
}
