package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

public interface RepairDAO {
	public List<RepairDTO> repairList(HashMap map);
	public void repairInsert(RepairDTO dto);
	public void repairUpdate(RepairDTO dto);
	public void repairDelete(String re_code);
	public RepairDTO select(RepairDTO dto);
	public int getRepairCount();
	public void busUpdatestate(RepairDTO dto);
	//버스번호 
	public List<BusDTO> buslist(HashMap map);
	public void accUpdatestate(RepairDTO dto);
	public void accoInsert(RepairDTO dto);
	public void repairUpdateState(RepairDTO dto);
	//완료
	public void state(RepairDTO dto);
}
