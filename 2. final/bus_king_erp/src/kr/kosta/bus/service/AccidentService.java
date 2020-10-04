package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import kr.kosta.bus.model.AccidentDTO;
import kr.kosta.bus.model.BusDTO;
import kr.kosta.bus.model.EmployerDTO;

public interface AccidentService {

	// 버스번호
	public List<BusDTO> blist(HashMap map);

	// 직원사번, 직원이름
	public List<EmployerDTO> elist(HashMap map);

	public List<AccidentDTO> accidentList(HashMap map);

	public void accidentInsert(AccidentDTO dto);

	public void accidentUpdate(AccidentDTO dto);

	public void accidentDelete(String acc_no);

	public int getaccidentCount();

	public AccidentDTO accidentDetail(String acc_no);

	public void acc_stateUpdate(String acc_no);
	
	public void repairInsert(AccidentDTO dto);
	
	public List<AccidentDTO> getChart();
	
	public void busStateUpdate(String b_no);
	
	public String busState(String b_no);
}
