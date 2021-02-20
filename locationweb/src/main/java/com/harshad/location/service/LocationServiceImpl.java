package com.harshad.location.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.harshad.location.model.Location;
import com.harshad.location.repository.LocationRepository;


@Service
public class LocationServiceImpl implements LocationService {
	
	@Autowired
	private LocationRepository locationRepository;
	
	

	public LocationRepository getLocationRepository() {
		return locationRepository;
	}

	public void setLocationRepository(LocationRepository locationRepository) {
		this.locationRepository = locationRepository;
	}

	@Override
	public Location saveLocation(Location location) {
		
		
		return locationRepository.save(location);
	}

	@Override
	public Location updateLocation(Location location) {
		return locationRepository.save(location);
	}

	@Override
	public void deleteLocation(Location location) {
		locationRepository.delete(location);
	}

	@Override
	public Location getLocationById(int id) {
		
		Optional<Location> loc = locationRepository.findById(id);
		Location loc1 = loc.get();
		return loc1;
		
	}

	@Override
	public List<Location> getAllLocations() {

		
		return locationRepository.findAll();
	}

}
