package com.demo.model;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@ToString
@NoArgsConstructor
public class Bus {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long busId;
	private String busName;
	private String driverName;
	private String busType;
	private LocalTime arrivalTime;
	private LocalTime departureTime; 
	private int seats; 
	private int availableSeats; 
	private double price; 
	// Relationship with Route: Many Buses can belong to one Route
    @ManyToOne
    @JoinColumn(name = "route_id") 
    private Route route;
    
    private String routeFrom;
    private String routeTo;
    
    @OneToMany(mappedBy = "bus", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Booking> bookings;


}
