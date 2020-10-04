package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.kosta.bus.model.BusDTO;
import kr.kosta.bus.model.Wonlyo2_DAO;
import kr.kosta.bus.model.Wonlyo2_DTO;
import kr.kosta.bus.model.WonlyoDTO;

@Service
public class Wonlyo2ServiceImpl implements Wonlyo2Service{

	
	@Inject
	Wonlyo2_DAO wonlyo2_DAO;
	
	

	@Override
	public List<Wonlyo2_DTO> wonlyo2List(HashMap map) {
		return wonlyo2_DAO.wonlyo2List(map);
	}

	@Override
	public void wonlyo2Insert(Wonlyo2_DTO dto) {
		wonlyo2_DAO.wonlyo2Insert(dto);
		
	}


	@Override
	public int getwonlyo2Count() {
		return wonlyo2_DAO.getwonlyo2Count();
	}

	@Override
	public List<BusDTO> wobuslist(HashMap map) {
		return wonlyo2_DAO.wobuslist(map);
	}

	@Override
	public List<WonlyoDTO> wo2List(HashMap map) {
		return wonlyo2_DAO.wo2List(map);
	}

	@Override
	public int totalselect() {
		return wonlyo2_DAO.totalselect();
		
	}

	@Override
	public void wonlyototal(Wonlyo2_DTO dto) {
		wonlyo2_DAO.wonlyototal(dto);
		
	}

	@Override
	public void delete(Wonlyo2_DTO dto) {
		wonlyo2_DAO.delete(dto);
		
	}


	
}
