package com.demo.model;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@NoArgsConstructor
@ToString
public class Route {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long routeId;
	private String routeFrom;
	private String routeTo;
	private int distance;
	
	
    @OneToMany(mappedBy = "route", cascade = CascadeType.ALL)				//One Route can have MANY Buses
    private List<Bus> buses;

}
