package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.kosta.bus.model.WonlyoDAO;
import kr.kosta.bus.model.WonlyoDTO;

@Service
public class WonlyoServiceImpl implements WonlyoService{

	
	@Inject
	WonlyoDAO wonlyoDAO;
	
	@Override
	public List<WonlyoDTO> wonlyoList(HashMap map) {
		return wonlyoDAO.wonlyoList(map);
	}

	@Override
	public void wonlyoInsert(WonlyoDTO dto) {
		wonlyoDAO.wonlyoInsert(dto);
	}



	@Override
	public void wonlyoUpdate(WonlyoDTO dto) {
		wonlyoDAO.wonlyoUpdate(dto);
		
	}

	@Override
	public WonlyoDTO selectBy(WonlyoDTO dto) {
		return wonlyoDAO.selectBy(dto);
	}

	@Override
	public int getwonlyoCount() {
		return wonlyoDAO.getwonlyoCount();
	}

	
}
