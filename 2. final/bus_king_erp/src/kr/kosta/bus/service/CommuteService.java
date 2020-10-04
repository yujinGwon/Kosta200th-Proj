package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import kr.kosta.bus.model.BusDTO;
import kr.kosta.bus.model.Commute2DTO;
import kr.kosta.bus.model.Commute3DTO;
import kr.kosta.bus.model.CommuteDTO;
import kr.kosta.bus.model.EmployerDTO;
import kr.kosta.bus.model.RouteDTO;

public interface CommuteService {
	
	public List<Commute2DTO> commuteList_day(HashMap map);
	public List<Commute3DTO> commuteList_month(HashMap map);
	public void commuteInsert(CommuteDTO dto);
	
	//년도
	public List<CommuteDTO> ylist(HashMap map);
	//월
	public List<CommuteDTO> mlist(HashMap map);
	//데이
	public List<CommuteDTO> dlist(HashMap map);
	//사번
	public List<CommuteDTO> elist(HashMap map);

}
