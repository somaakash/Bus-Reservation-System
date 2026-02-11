package com.demo.model;

import java.time.LocalDate;
import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "feedback")
@Getter
@Setter
@ToString
@NoArgsConstructor
public class Feedback {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long feedbackId; 

    private int driverRating; 
    private int serviceRating; 
    private int overallRating; 
    private String comments; 
    private LocalDate feedbackDate; 
    private LocalDateTime submittedAt; 
    private String feedbackText;

   
    private LocalDate journeyDate;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user; 

    @ManyToOne
    @JoinColumn(name = "bus_id")
    private Bus bus; 

    @OneToOne
    @JoinColumn(name = "reservation_id")
    private Reservation reservation;
    
    public void setFeedbackText(String feedbackText) {
        this.feedbackText = feedbackText;
    }

    public void setJourneyDate(LocalDate journeyDate) {
        this.journeyDate = journeyDate;
    }
}
