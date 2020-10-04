package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PenaltyDAOImpl implements PenaltyDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<BusDTO> blist(HashMap map) {
		return sqlSession.selectList("PenaltyDAO.blist", map);
	}
	
	@Override
	public List<EmployerDTO> elist(HashMap map) {
		return sqlSession.selectList("PenaltyDAO.elist", map);
	} 
	
	@Override
	public List<PenaltyDTO> penaltyList(HashMap map) {
		return sqlSession.selectList("PenaltyDAO.penaltyList", map);
	}

	@Override
	public void penaltyInsert(PenaltyDTO dto) {
		sqlSession.insert("PenaltyDAO.penaltyInsert", dto);
	}

	@Override
	public void penaltyUpdate(PenaltyDTO dto) {
		sqlSession.update("PenaltyDAO.penaltyUpdate", dto);
	}

	@Override
	public void penaltyDelete(String p_code) {
		sqlSession.delete("PenaltyDAO.penaltyDelete", p_code);
	}

	@Override
	public int getpenaltyCount() {
		return sqlSession.selectOne("PenaltyDAO.getpenaltyCount");
	}

	@Override
	public PenaltyDTO penaltyDetail(String p_code) {
		return sqlSession.selectOne("PenaltyDAO.penaltyDetail", p_code);
	}
	
	@Override
	public void p_paymentUpdate(String p_code) {
		sqlSession.update("PenaltyDAO.p_paymentUpdate", p_code);
	}
	
	@Override
	public void accountInsert(PenaltyDTO dto) {
		sqlSession.insert("PenaltyDAO.accountInsert", dto);
	}

}
