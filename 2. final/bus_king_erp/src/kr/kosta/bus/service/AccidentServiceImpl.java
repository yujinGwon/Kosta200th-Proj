package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.kosta.bus.model.AccidentDAO;
import kr.kosta.bus.model.AccidentDTO;
import kr.kosta.bus.model.BusDTO;
import kr.kosta.bus.model.EmployerDTO;

@Service
public class AccidentServiceImpl implements AccidentService {

	@Inject
	AccidentDAO accidentDAO;

	@Override
	public List<BusDTO> blist(HashMap map) {
		return accidentDAO.blist(map);
	}

	@Override
	public List<EmployerDTO> elist(HashMap map) {
		return accidentDAO.elist(map);
	}

	@Override
	public List<AccidentDTO> accidentList(HashMap map) {
		return accidentDAO.accidentList(map);
	}

	@Override
	public void accidentInsert(AccidentDTO dto) {
		accidentDAO.accidentInsert(dto);
	}

	@Override
	public void accidentUpdate(AccidentDTO dto) {
		accidentDAO.accidentUpdate(dto);
	}

	@Override
	public void accidentDelete(String acc_no) {
		accidentDAO.accidentDelete(acc_no);
	}

	@Override
	public int getaccidentCount() {
		return accidentDAO.getaccidentCount();
	}

	@Override
	public AccidentDTO accidentDetail(String acc_no) {
		return accidentDAO.accidentDetail(acc_no);
	}

	@Override
	public void acc_stateUpdate(String acc_no) {
		accidentDAO.acc_stateUpdate(acc_no);
	} 
	
	@Override
	public void repairInsert(AccidentDTO dto) {
		accidentDAO.repairInsert(dto);
	}
	
	@Override
	public List<AccidentDTO> getChart() {
		return accidentDAO.getChart();
	}
	
	@Override
	public void busStateUpdate(String b_no) {
		accidentDAO.busStateUpdate(b_no);
	}
	
	@Override
	public String busState(String b_no) {
		return accidentDAO.busState(b_no);
	}
}
