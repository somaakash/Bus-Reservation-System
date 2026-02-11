package com.demo.service;

import java.util.List;

import com.demo.model.Bus;

public interface BusService {
	public abstract Bus addBus(Bus bus);
	public abstract Bus updateBus(Bus bus);
	public abstract void deleteBus(Long busId);
	public abstract List<Bus> getAllBuses();
	public abstract void saveBus(Bus bus);
	public abstract Bus getBusById(Long busId);
	public abstract List<Bus> searchBuses(String routeFrom, String routeTo);
	


}
