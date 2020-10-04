package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AccidentDAOImpl implements AccidentDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<BusDTO> blist(HashMap map) {
		return sqlSession.selectList("AccidentDAO.blist", map);
	}

	@Override
	public List<EmployerDTO> elist(HashMap map) {
		return sqlSession.selectList("AccidentDAO.elist", map);
	}

	@Override
	public List<AccidentDTO> accidentList(HashMap map) {
		return sqlSession.selectList("AccidentDAO.accidentList", map);
	}

	@Override
	public void accidentInsert(AccidentDTO dto) {
		sqlSession.insert("AccidentDAO.accidentInsert", dto);
	}

	@Override
	public void accidentUpdate(AccidentDTO dto) {	
		sqlSession.update("AccidentDAO.accidentUpdate", dto);
	}

	@Override
	public void accidentDelete(String acc_no) {
		sqlSession.delete("AccidentDAO.accidentDelete", acc_no);
	}

	@Override
	public int getaccidentCount() {
		return sqlSession.selectOne("AccidentDAO.getaccidentCount");
	}

	@Override
	public AccidentDTO accidentDetail(String acc_no) {
		return sqlSession.selectOne("AccidentDAO.accidentDetail", acc_no);
	}
	
	@Override
	public void acc_stateUpdate(String acc_no) {
		sqlSession.update("AccidentDAO.acc_stateUpdate", acc_no);
	}
	
	@Override
	public void repairInsert(AccidentDTO dto) {
		sqlSession.insert("AccidentDAO.repairInsert", dto);
	}
	
	@Override
	public List<AccidentDTO> getChart() {
		return sqlSession.selectList("AccidentDAO.getChart");
	}
	
	@Override
	public void busStateUpdate(String b_no) {	
		sqlSession.update("AccidentDAO.busStateUpdate", b_no);
	}
	
	@Override
	public String busState(String b_no) {
		return sqlSession.selectOne("AccidentDAO.busState", b_no);
	}
}
