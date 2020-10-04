package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommuteDAOImpl implements CommuteDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<Commute2DTO> commuteList_day(HashMap map) {
		return sqlSession.selectList("CommuteDAO.commuteList_day", map);
	}

	@Override
	public List<Commute3DTO> commuteList_month(HashMap map) {	
		return sqlSession.selectList("CommuteDAO.commuteList_month", map);
	}

	@Override
	public void commuteInsert(CommuteDTO dto) {
		sqlSession.insert("CommuteDAO.commuteInsert", dto);

	}

	@Override
	public List<CommuteDTO> ylist(HashMap map) {
		return sqlSession.selectList("CommuteDAO.ylist", map);
	}

	@Override
	public List<CommuteDTO> mlist(HashMap map) {
		return sqlSession.selectList("CommuteDAO.mlist", map);
	}

	@Override
	public List<CommuteDTO> dlist(HashMap map) {
		return sqlSession.selectList("CommuteDAO.dlist", map);
	}

	@Override
	public List<CommuteDTO> elist(HashMap map) {
		return sqlSession.selectList("CommuteDAO.elist", map);
	}
	
}
