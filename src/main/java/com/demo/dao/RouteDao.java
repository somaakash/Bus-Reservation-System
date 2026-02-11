package com.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.model.Route;

public interface RouteDao extends JpaRepository<Route, Long> {

}
