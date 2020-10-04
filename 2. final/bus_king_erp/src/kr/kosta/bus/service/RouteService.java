package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import kr.kosta.bus.model.RouteDTO;

public interface RouteService {
	public List<RouteDTO> routeList(HashMap map);
	public void routeInsert(RouteDTO dto);
	public void routeUpdate(RouteDTO dto);
	public void routeDelete(String r_no);
	public int getRouteCount();
	public RouteDTO routeSelect(RouteDTO dto);
	public int routealloc(String r_no);
	public int rnoCheck(String r_no);
}
