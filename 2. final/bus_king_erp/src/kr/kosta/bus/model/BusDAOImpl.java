package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BusDAOImpl implements BusDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<BusDTO> busList(HashMap map) {
		return sqlSession.selectList("BusDAO.busList", map);
	}

	@Override
	public void busInsert(BusDTO dto) {
		sqlSession.insert("BusDAO.busInsert", dto);
	}

	@Override
	public void busUpdate(BusDTO dto) {
		sqlSession.update("BusDAO.busUpdate", dto);
	}

	@Override
	public void busDelete(String b_no) {
		sqlSession.delete("BusDAO.busDelete", b_no);
	}

	@Override
	public int getBusCount() {
		return sqlSession.selectOne("BusDAO.getBusCount");
	}

	@Override
	public BusDTO busSelect(String b_no) {
		return sqlSession.selectOne("BusDAO.busSelect", b_no);
	}

	@Override
	public void busRepairInsert(String b_no) {
		sqlSession.insert("BusDAO.busRepairInsert", b_no);
	}
	
	@Override
	public void stateUpdateRrepair(String b_no) {
		sqlSession.update("BusDAO.stateUpdateRrepair", b_no);
	}
	
	@Override
	public int bnoCheck(String b_no) {
		return sqlSession.selectOne("BusDAO.bnoCheck", b_no);
	}
}
