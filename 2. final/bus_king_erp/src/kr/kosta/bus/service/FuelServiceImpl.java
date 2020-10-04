package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.kosta.bus.model.BusDTO;
import kr.kosta.bus.model.FuelDAO;
import kr.kosta.bus.model.FuelDTO;

@Service
public class FuelServiceImpl implements FuelService {

	@Inject
	FuelDAO fuelDAO;
	
	@Override
	public List<FuelDTO> fuelList(HashMap map) {
		return fuelDAO.fuelList(map);
	}

	@Override
	public void fuelInsert(FuelDTO dto) {
		fuelDAO.fuelInsert(dto);
	}

	@Override
	public void fuelUpdate(FuelDTO dto) {
		fuelDAO.fuelUpdate(dto);
		
	}

	@Override
	public void fuelDelete(String f_code) {
		fuelDAO.fuelDelete(f_code);
		
	}

	@Override
	public int getfuelCount() {
		return fuelDAO.getfuelCount();
	}

	@Override
	public List<BusDTO> bflist(HashMap map) {
		return fuelDAO.bflist(map);
	}

	@Override
	public void faccInsert(FuelDTO dto) {
		fuelDAO.faccInsert(dto);
	}

	@Override
	public FuelDTO fselect(FuelDTO dto) {
		return fuelDAO.fselect(dto);
	}

}
