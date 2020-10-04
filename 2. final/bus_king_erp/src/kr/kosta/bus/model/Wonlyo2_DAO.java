package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

public interface Wonlyo2_DAO {

	public List<Wonlyo2_DTO> wonlyo2List(HashMap map);
	public void wonlyo2Insert(Wonlyo2_DTO dto);
	public int getwonlyo2Count();
	public void delete(Wonlyo2_DTO dto);
	//버스번호
	
	public List<BusDTO> wobuslist(HashMap map);
	//자재정보
	public List<WonlyoDTO> wo2List(HashMap map);
	//wonlyo 총수량
	public int totalselect();
	//수량합 
	
	public void wonlyototal(Wonlyo2_DTO dto);
}
