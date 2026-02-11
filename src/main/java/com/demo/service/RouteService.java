package com.demo.service;

import java.util.List;

import com.demo.model.Route;

public interface RouteService {
	public abstract  Route addRoute(Route route);
	public abstract  Route updateRoute(Route route);
	public abstract  void deleteRoute(Long routeId);
	public abstract  List<Route>getAllroutes();
	public abstract  Route getRouteById(Long routeId);
}
