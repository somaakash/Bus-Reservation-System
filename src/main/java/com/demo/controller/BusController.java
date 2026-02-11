package com.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.demo.model.Bus;
import com.demo.service.BusService;
import com.demo.service.RouteService;

@Controller
//@RequestMapping("/bus")
public class BusController {
	
	 @Autowired
	    private BusService busService;
	 @Autowired
	 private RouteService routeService;
	 
	   //Show all buses
	    @GetMapping("/bus-list")
	    public String busList(Model model) {
	        model.addAttribute("buses", busService.getAllBuses());
	        model.addAttribute("bus", new Bus());
	        return "busList";   // busList.jsp
	    }

	    //Open add bus page
	    @GetMapping("/add-bus")
	    public String showAddBusPage(Model model) {
	    	model.addAttribute("bus", new Bus());

	        // All routes for dropdown
	        model.addAttribute("routes", routeService.getAllroutes());
	        return "addBus";   // addBus.jsp
	    }

	    // Save new bus
	    @PostMapping("/add-bus")
	    public String addBus(@ModelAttribute Bus bus) {
	        busService.saveBus(bus);   // matches your service
	        return "redirect:/bus-list";
	    }

	    //Delete bus
	    @GetMapping("/delete-bus/{id}")
	    public String deleteBus(@PathVariable Long id) {
	        busService.deleteBus(id);
	        return "redirect:/bus-list";
	    }
	    @GetMapping("/search-buses")
	    public String searchBuses(
	            @RequestParam String routeFrom,
	            @RequestParam String routeTo,
	            Model model) {

	        model.addAttribute("buses",
	                busService.searchBuses(routeFrom, routeTo));

	        return "busSearchResult"; // busSearchResult.jsp
	    }
	    @GetMapping("/search-bus")
	    public String searchBusPage() {
	        return "searchBus";
	    }
	    
	    @GetMapping("/edit-bus/{id}")
	    public String showEditBusPage(@PathVariable Long id, Model model) {

	        Bus bus = busService.getBusById(id);
	        model.addAttribute("bus", bus);
	        model.addAttribute("routes", routeService.getAllroutes());

	        return "editBus";
	    }

	    @PostMapping("/update-bus")
	    public String updateBus(@ModelAttribute Bus bus) {

	        busService.saveBus(bus);
	        return "redirect:/bus-list";
	    }
	    
	    
}
