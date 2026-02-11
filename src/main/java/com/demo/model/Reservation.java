package com.demo.model;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@ToString
@NoArgsConstructor
public class Reservation {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long reservationId;
	private String reservationStatus; 
    private String reservationType; 
    private LocalDate reservationDate; 
    private String reservationTime; 
    private String source; 
    private String destination; 
    private int seatsRequested; 
    private boolean journeyStarted; 
    private boolean journeyEnded; 
    
    @ManyToOne
    @JoinColumn(name="bus_id")
    private Bus bus;
    
    @ManyToOne
    @JoinColumn(name="user_id")
    private User user;
}
