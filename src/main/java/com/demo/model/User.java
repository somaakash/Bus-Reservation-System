package com.demo.model;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="users_data")
@Getter
@Setter
@NoArgsConstructor
@ToString
public class User {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	 private Long userId;
	 private String username;
	 private String password ;
	 private String firstName; 
	 private String lastName;
	 private String contact;
	 private String email;
	 
	 @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	  private List<Reservation> reservations;

}
