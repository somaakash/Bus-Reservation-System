package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.BusDao;
import com.demo.dao.RouteDao;
import com.demo.model.Bus;
@Service
public class BusServiceImpl implements BusService{
	
	@Autowired
	private BusDao busDao;
	
	
	
	@Override
	public Bus addBus(Bus bus) {
		
		return busDao.save(bus);
	}

	@Override
	public Bus updateBus(Bus bus) {
		
		return busDao.save(bus);
	}

	@Override
	public void deleteBus(Long busId) {
		
		busDao.deleteById(busId);
		
	}

	@Override
	public List<Bus> getAllBuses() {
		
		return busDao.findAll();
	}

	@Override
	public Bus getBusById(Long busId) {
		
		return busDao.findById(busId).orElse(null);
	}
	@Override
    public void saveBus(Bus bus) {
        busDao.save(bus);
    }

	@Override
    public List<Bus> searchBuses(String routeFrom, String routeTo) {
        return busDao.findByRoute_RouteFromAndRoute_RouteTo(routeFrom, routeTo);
    }

}
