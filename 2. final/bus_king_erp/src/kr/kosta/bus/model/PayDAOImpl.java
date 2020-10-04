package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PayDAOImpl implements PayDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public PayDTO payList(HashMap map) {
		return sqlSession.selectOne("PayDAO.payList", map);
	}

	@Override
	public void payInsert(PayDTO dto) {
		sqlSession.insert("PayDAO.payInsert", dto);
	}

	@Override
	public List<PayDTO> ylist(HashMap map) {
		return sqlSession.selectList("PayDAO.ylist", map);
	}

	@Override
	public List<PayDTO> mlist(HashMap map) {
		return sqlSession.selectList("PayDAO.mlist", map);
	}

	@Override
	public List<PayDTO> elist(HashMap map) {
		return sqlSession.selectList("PayDAO.elist", map);
	}

	@Override
	public void accoInsert(PayDTO dto) {
		sqlSession.insert("PayDAO.accoInsert", dto);		
	}

	@Override
	public String payCode() {
		return sqlSession.selectOne("PayDAO.payCode");
	}
	
	@Override
	public int payCheck(PayDTO dto) {
		return sqlSession.selectOne("PayDAO.payCheck", dto);
	}
	
}
