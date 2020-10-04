package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import kr.kosta.bus.model.BusDTO;

public interface BusService {

	public List<BusDTO> busList(HashMap map);
	public void busInsert(BusDTO dto);
	public void busUpdate(BusDTO dto);
	public void busDelete(String b_no);
	public int getBusCount();
	public BusDTO busSelect(String b_no);
	public void busRepairInsert(String b_no);
	public void stateUpdateRrepair(String b_no);
	public int bnoCheck(String b_no);
}
