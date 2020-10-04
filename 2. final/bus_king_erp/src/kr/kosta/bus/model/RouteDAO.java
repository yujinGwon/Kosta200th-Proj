package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

public interface RouteDAO {
	public List<RouteDTO> routeList(HashMap map); // 전체 노선정보를 가져옴
	public void routeInsert(RouteDTO dto); // 노선정보를  입력
	public void routeUpdate(RouteDTO dto); // 노선정보를  업데이트(수정)
	public void routeDelete(String r_no); // 노선정보 삭제
	public int getRouteCount(); // 노선정보의 레코드  수 
	public RouteDTO routeSelect(RouteDTO dto); // 노선번호로  노선정보 검색
	public int routealloc(String r_no); // 배차된 노선번호  확인
	public int rnoCheck(String r_no); // 노선번호 중복 검색
}
