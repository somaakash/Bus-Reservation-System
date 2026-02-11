package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.RouteDao;
import com.demo.model.Route;
@Service
public class RouteServiceImpl implements RouteService {

	@Autowired
    private RouteDao routeDao;

    @Override
    public Route addRoute(Route route) {
        return routeDao.save(route);
    }

    @Override
    public Route updateRoute(Route route) {
        return routeDao.save(route);
    }

    @Override
    public void deleteRoute(Long routeId) {
        routeDao.deleteById(routeId);
    }

    

    @Override
    public Route getRouteById(Long routeId) {
        return routeDao.findById(routeId).orElse(null);
    }

	@Override
	public List<Route> getAllroutes() {
		
		return routeDao.findAll();
	}

}
