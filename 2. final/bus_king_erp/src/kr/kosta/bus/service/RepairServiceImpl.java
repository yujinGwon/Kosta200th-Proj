package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kosta.bus.model.BusDTO;
import kr.kosta.bus.model.RepairDAO;
import kr.kosta.bus.model.RepairDTO;

@Service
public class RepairServiceImpl implements RepairService{

	@Inject
	RepairDAO repairDAO;
	


	@Override
	public List<RepairDTO> repairList(HashMap map) {
		return repairDAO.repairList(map);
	}



	@Override
	public void repairInsert(RepairDTO dto) {
		repairDAO.repairInsert(dto);
	}

	@Override
	public void repairUpdate(RepairDTO dto) {
		repairDAO.repairUpdate(dto);
	}

	@Override
	public void repairDelete(String re_code) {
		repairDAO.repairDelete(re_code);
	}

	@Override
	public int getRepairCount() {
		return repairDAO.getRepairCount();
	}



	@Override
	public RepairDTO select(RepairDTO dto) {
		return repairDAO.select(dto);
	}



	@Override
	public void busUpdatestate(RepairDTO dto) {
		repairDAO.busUpdatestate(dto);
		
	}



	@Override
	public void accUpdatestate(RepairDTO dto) {
		repairDAO.accUpdatestate(dto);
		
	}



	@Override
	public List<BusDTO> buslist(HashMap map) {
		return repairDAO.buslist(map);
	}



	@Override
	public void accoInsert(RepairDTO dto) {
		repairDAO.accoInsert(dto);
	}



	@Override
	public void repairUpdateState(RepairDTO dto) {
		repairDAO.repairUpdateState(dto);
		
	}


	@Override
	public void state(RepairDTO dto) {
		repairDAO.state(dto);
		
	}
	

}
