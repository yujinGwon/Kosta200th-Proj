package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.kosta.bus.model.CommuteDTO;
import kr.kosta.bus.model.PayDAO;
import kr.kosta.bus.model.PayDTO;

@Service
public class PayServiceImpl implements PayService {
	
	@Inject
	PayDAO payDAO;

	@Override
	public PayDTO payList(HashMap map) {
		return payDAO.payList(map);
	}

	@Override
	public void payInsert(PayDTO dto) {
		payDAO.payInsert(dto);

	}

	@Override
	public List<PayDTO> ylist(HashMap map) {
		return payDAO.ylist(map);
	}

	@Override
	public List<PayDTO> mlist(HashMap map) {
		return payDAO.mlist(map);
	}

	@Override
	public List<PayDTO> elist(HashMap map) {
		return payDAO.elist(map);
	}

	@Override
	public void accoInsert(PayDTO dto) {
		payDAO.accoInsert(dto);
	}

	@Override
	public String payCode() {
		return payDAO.payCode();
	}
	
	@Override
	public int payCheck(PayDTO dto) {
		return payDAO.payCheck(dto);
	}
	
	
	
}
