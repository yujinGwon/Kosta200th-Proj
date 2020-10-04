package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import kr.kosta.bus.model.BusDTO;
import kr.kosta.bus.model.Wonlyo2_DTO;
import kr.kosta.bus.model.WonlyoDTO;

public interface Wonlyo2Service {
	
	public List<Wonlyo2_DTO> wonlyo2List(HashMap map);
	public void wonlyo2Insert(Wonlyo2_DTO dto);
	public int getwonlyo2Count();
	public List<BusDTO> wobuslist(HashMap map);
	public List<WonlyoDTO> wo2List(HashMap map);
	public int totalselect();
	public void wonlyototal(Wonlyo2_DTO dto);
	public void delete(Wonlyo2_DTO dto);
}
