package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

public interface CommuteDAO {
	
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
