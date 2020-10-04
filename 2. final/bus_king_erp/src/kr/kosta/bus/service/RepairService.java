package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import kr.kosta.bus.model.BusDTO;
import kr.kosta.bus.model.RepairDTO;


public interface RepairService {
	public List<RepairDTO> repairList(HashMap map);
	public void repairInsert(RepairDTO dto);
	public void repairUpdate(RepairDTO dto);
	public void repairDelete(String re_code);
	public RepairDTO select(RepairDTO dto);
	public int getRepairCount();
	public void busUpdatestate(RepairDTO dto);
	//버스번호 
	public List<BusDTO> buslist(HashMap map);
	//범칙금(처리)차량
	public void accUpdatestate(RepairDTO dto);
	//회계
	public void accoInsert(RepairDTO dto);
	//처리완료
	public void repairUpdateState(RepairDTO dto);
	public void state(RepairDTO dto);
}
