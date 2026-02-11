package com.demo.model;

import java.time.LocalDateTime;
import java.time.LocalTime;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@Entity
@Setter
@Getter
@ToString
@NoArgsConstructor
public class Booking {
	
	

	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long bookingId;

	    @ManyToOne
	    private User user;

	    @ManyToOne
	    @OnDelete(action = OnDeleteAction.CASCADE)
	    private Bus bus;

	    private int seatsBooked;
	    private LocalDateTime bookingDate;
	    private String status; // BOOKED / CANCELLED

	    // getters & setters
	}


