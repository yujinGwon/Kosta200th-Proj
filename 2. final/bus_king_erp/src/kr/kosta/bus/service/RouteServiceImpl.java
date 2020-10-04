package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.kosta.bus.model.RouteDAO;
import kr.kosta.bus.model.RouteDTO;

@Service
public class RouteServiceImpl implements RouteService {
	
	@Inject
	RouteDAO routeDAO;

	@Override
	public List<RouteDTO> routeList(HashMap map) {
		return routeDAO.routeList(map);
	}

	@Override
	public void routeInsert(RouteDTO dto) {
		routeDAO.routeInsert(dto);
	}

	@Override
	public void routeUpdate(RouteDTO dto) {
		routeDAO.routeUpdate(dto);
	}

	@Override
	public void routeDelete(String r_no) {
		routeDAO.routeDelete(r_no);
	}

	@Override
	public int getRouteCount() {
		return routeDAO.getRouteCount();
	}
	
	@Override
	public RouteDTO routeSelect(RouteDTO dto) {
		return routeDAO.routeSelect(dto);
	}

	@Override
	public int routealloc(String r_no) {
		return routeDAO.routealloc(r_no);
	}
	
	@Override
	public int rnoCheck(String r_no) {
		return routeDAO.rnoCheck(r_no);
	}
	
}
