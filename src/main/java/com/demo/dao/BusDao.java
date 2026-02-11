package com.demo.dao;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.demo.model.Bus;
@Repository
public interface BusDao extends JpaRepository<Bus, Long>{
	List<Bus> findByRoute_RouteId(Long routeId);
	
	
	    List<Bus> findByRoute_RouteFromAndRoute_RouteTo(String routeFrom, String routeTo);
	    
	}

