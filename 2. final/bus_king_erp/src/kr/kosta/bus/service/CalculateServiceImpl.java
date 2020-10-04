package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.kosta.bus.model.BusDTO;
import kr.kosta.bus.model.CalcuateDAO;
import kr.kosta.bus.model.CalculateDTO;

@Service
public class CalculateServiceImpl implements CalculateService {

	@Inject
	CalcuateDAO calculateDAO;
	
	@Override
	public List<CalculateDTO> calList(HashMap map) {
		return calculateDAO.calList(map);
	}

	@Override
	public void calInsert(CalculateDTO dto) {
		calculateDAO.calInsert(dto);
	}

	@Override
	public void calUpdate(CalculateDTO dto) {
		calculateDAO.calUpdate(dto);
	}

	@Override
	public int getCalCount() {
		return calculateDAO.getCalCount();
	}

	@Override
	public CalculateDTO getCalculate(String cal_code) {
		return calculateDAO.getCalculate(cal_code);
	}

	@Override
	public void accountInsert(CalculateDTO dto) {
		calculateDAO.accountInsert(dto);
	}

	@Override
	public String calCode() {
		return calculateDAO.calCode();
	}

	@Override
	public List<BusDTO> getBuslist() {
		return calculateDAO.getBuslist();
	}
}
