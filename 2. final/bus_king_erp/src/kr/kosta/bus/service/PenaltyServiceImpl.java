package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.kosta.bus.model.AccountDTO;
import kr.kosta.bus.model.BusDTO;
import kr.kosta.bus.model.EmployerDTO;
import kr.kosta.bus.model.PenaltyDAO;
import kr.kosta.bus.model.PenaltyDTO;

@Service
public class PenaltyServiceImpl implements PenaltyService {

	@Inject
	PenaltyDAO penaltyDAO;

	@Override
	public List<BusDTO> blist(HashMap map) {
		return penaltyDAO.blist(map);
	}

	@Override
	public List<EmployerDTO> elist(HashMap map) {
		return penaltyDAO.elist(map);
	}

	@Override
	public List<PenaltyDTO> penaltyList(HashMap map) {
		return penaltyDAO.penaltyList(map);
	}

	@Override
	public void penaltyInsert(PenaltyDTO dto) {
		penaltyDAO.penaltyInsert(dto);
	}

	@Override
	public void penaltyUpdate(PenaltyDTO dto) {
		penaltyDAO.penaltyUpdate(dto);
	}

	@Override
	public void penaltyDelete(String p_code) {
		penaltyDAO.penaltyDelete(p_code);
	}

	@Override
	public int getpenaltyCount() {
		return penaltyDAO.getpenaltyCount();
	}

	@Override
	public PenaltyDTO penaltyDetail(String p_code) {
		return penaltyDAO.penaltyDetail(p_code);
	}

	@Override
	public void p_paymentUpdate(String p_code) {
		penaltyDAO.p_paymentUpdate(p_code);
	}
	
	@Override
	public void accountInsert(PenaltyDTO dto) {
		penaltyDAO.accountInsert(dto);
	}
}
