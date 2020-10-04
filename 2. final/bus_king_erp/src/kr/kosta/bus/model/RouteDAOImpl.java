package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RouteDAOImpl implements RouteDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<RouteDTO> routeList(HashMap map) {
		return sqlSession.selectList("RouteDAO.routeList", map);
	}

	@Override
	public void routeInsert(RouteDTO dto) {
		sqlSession.insert("RouteDAO.routeInsert", dto);
	}

	@Override
	public void routeUpdate(RouteDTO dto) {
		sqlSession.update("RouteDAO.routeUpdate", dto);
	}

	@Override
	public void routeDelete(String r_no) {
		sqlSession.delete("RouteDAO.routeDelete", r_no);
	}

	@Override
	public int getRouteCount() {
		return sqlSession.selectOne("RouteDAO.getRouteCount");
	}

	@Override
	public RouteDTO routeSelect(RouteDTO dto) {
		return sqlSession.selectOne("RouteDAO.routeSelect", dto);
	}

	@Override
	public int routealloc(String r_no) {
		return sqlSession.selectOne("RouteDAO.routealloc", r_no);
	}
	
	@Override
	public int rnoCheck(String r_no) {
		return sqlSession.selectOne("RouteDAO.rnoCheck", r_no);
	}
	
}
