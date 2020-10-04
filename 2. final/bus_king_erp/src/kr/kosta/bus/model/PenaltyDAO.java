package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

public interface PenaltyDAO {

	// 버스번호
	public List<BusDTO> blist(HashMap map);
	// 직원사번, 직원이름
	public List<EmployerDTO> elist(HashMap map);

	public List<PenaltyDTO> penaltyList(HashMap map);

	public void penaltyInsert(PenaltyDTO dto);

	public void penaltyUpdate(PenaltyDTO dto);

	public void penaltyDelete(String p_code);

	public int getpenaltyCount();

	public PenaltyDTO penaltyDetail(String p_code);

	public void p_paymentUpdate(String p_code);
	
	public void accountInsert(PenaltyDTO dto);

}
