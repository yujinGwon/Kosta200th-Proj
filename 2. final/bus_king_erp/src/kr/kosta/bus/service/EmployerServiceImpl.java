package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.kosta.bus.model.EmployerDAO;
import kr.kosta.bus.model.EmployerDTO;

@Service
public class EmployerServiceImpl implements EmployerService {

	
	@Inject
	EmployerDAO employerDAO;
	
	@Override
	public List<EmployerDTO> employerList(HashMap map) {
		return employerDAO.employerList(map);
	}
	
	@Override
	public List<EmployerDTO> employerSearch(HashMap map) {
		return employerDAO.employerSearch(map);
	}
	
	@Override
	public void employerInsert(EmployerDTO dto) {
		employerDAO.employerInsert(dto);
	}

	@Override
	public void employerUpdate(EmployerDTO dto) {
		employerDAO.employerUpdate(dto);
	}

	@Override
	public EmployerDTO employerUpdate2(EmployerDTO dto) {
		return employerDAO.employerUpdate2(dto);
	}
	
	@Override
	public void employerDelete(String e_no) {
		employerDAO.employerDelete(e_no);
	}

	@Override
	public int getEmployerCount() {
		return employerDAO.getEmployerCount();
	}
	
	@Override
	public String employerSelect(String e_jumin) {
		return employerDAO.employerSelect(e_jumin);
	}

	@Override
	public void employerUpdate3(HashMap map) {
		 employerDAO.employerUpdate3(map);
	}
	
	@Override
	public void employerUpdateNopwd(EmployerDTO dto) {
		employerDAO.employerUpdateNopwd(dto);
	}


}
