package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AllocationDAOImpl implements AllocationDAO {
	
	@Override
	public List<BusDTO> blist(HashMap map) {
		return sqlSession.selectList("AllocationDAO.blist", map);
	}

	@Override
	public List<RouteDTO> rlist(HashMap map) {
		return sqlSession.selectList("AllocationDAO.rlist", map);
	}

	@Override
	public List<EmployerDTO> elist(HashMap map) {
		return sqlSession.selectList("AllocationDAO.elist", map);
	}

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<AllocationDTO> allocationList(HashMap map) {
		return sqlSession.selectList("AllocationDAO.allocationList", map);
	}

	@Override
	public void allocationInsert(AllocationDTO dto) {
		sqlSession.insert("AllocationDAO.allocationInsert", dto);
	}

	@Override
	public void allocationUpdate(AllocationDTO dto) {
		sqlSession.update("AllocationDAO.allocationUpdate", dto);
	}

	@Override
	public void allocationDelete(AllocationDTO dto) {
		sqlSession.delete("AllocationDAO.allocationDelete", dto);
	}

	@Override
	public int getAllocationCount(HashMap map) {
		return sqlSession.selectOne("AllocationDAO.getAllocationCount", map);
	}

	@Override
	public void stateUpdateRun(AllocationDTO dto) {
		sqlSession.update("AllocationDAO.stateUpdateRun", dto);
	}

	@Override
	public void stateUpdateStop(AllocationDTO dto) {
		sqlSession.update("AllocationDAO.stateUpdateStop", dto);
	}

	@Override
	public String bstate(String b_no) {
		return sqlSession.selectOne("AllocationDAO.bstate", b_no);
	}

	@Override
	public void employerUpdateBno(AllocationDTO dto) {
		sqlSession.update("AllocationDAO.employerUpdateBno", dto);
	}

	@Override
	public void employerUpdateBnull(AllocationDTO dto) {
		sqlSession.update("AllocationDAO.employerUpdateBnull", dto);
	}
	
}
