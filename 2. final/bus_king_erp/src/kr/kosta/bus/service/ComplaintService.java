package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import kr.kosta.bus.model.BusDTO;
import kr.kosta.bus.model.ComplaintDTO;
import kr.kosta.bus.model.EmployerDTO;

public interface ComplaintService {

	// 버스번호
	public List<BusDTO> blist(HashMap map);
	// 직원사번, 직원이름
	public List<EmployerDTO> elist(HashMap map);
	
	public List<ComplaintDTO> complaintList(HashMap map);

	public void complaintInsert(ComplaintDTO dto);

	public void complaintUpdate(ComplaintDTO dto);

	public void complaintDelete(String c_no);

	public int getcomplaintCount();

	public ComplaintDTO complaintDetail(String c_no);

}
