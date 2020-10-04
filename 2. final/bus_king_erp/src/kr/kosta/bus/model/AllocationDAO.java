package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

public interface AllocationDAO {
	
	//번호판
	public List<BusDTO> blist(HashMap map);
	//노선
	public List<RouteDTO> rlist(HashMap map);
	//기사
	public List<EmployerDTO> elist(HashMap map);

	public List<AllocationDTO> allocationList(HashMap map);
	public void allocationInsert(AllocationDTO dto);
	public void allocationUpdate(AllocationDTO dto);
	public void allocationDelete(AllocationDTO dto);
	public int getAllocationCount(HashMap map);
	public void stateUpdateRun(AllocationDTO dto);
	public void stateUpdateStop(AllocationDTO dto);
	public String bstate(String b_no);
	public void employerUpdateBno(AllocationDTO dto);
	public void employerUpdateBnull(AllocationDTO dto);
}
