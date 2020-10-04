package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EmployerDAOImpl implements EmployerDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<EmployerDTO> employerList(HashMap map) {
		return sqlSession.selectList("EmployerDAO.employerList", map);
	}
	
	@Override
	public List<EmployerDTO> employerSearch(HashMap map) {
		return sqlSession.selectList("EmployerDAO.employerSearch", map);
	}
	
	@Override
	public void employerInsert(EmployerDTO dto) {
		sqlSession.insert("EmployerDAO.employerInsert", dto);
	}

	@Override
	public void employerUpdate(EmployerDTO dto) {
		sqlSession.update("EmployerDAO.employerUpdate", dto);
	}
	@Override
	public EmployerDTO employerUpdate2(EmployerDTO dto) {
		return  sqlSession.selectOne("EmployerDAO.employerUpdate2", dto);
		
	}
	@Override
	public void employerDelete(String e_no) {
		sqlSession.delete("EmployerDAO.employerDelete", e_no);
	}

	@Override
	public int getEmployerCount() {
		return sqlSession.selectOne("EmployerDAO.getEmployerCount");
	}
	
	@Override
	public String employerSelect(String e_jumin) {
		return sqlSession.selectOne("EmployerDAO.employerSelect", e_jumin);
	}

	@Override
	public void employerUpdate3(HashMap map) {
		 sqlSession.update("EmployerDAO.employerUpdate3", map);
	}
	
	@Override
	public void employerUpdateNopwd(EmployerDTO dto) {
		sqlSession.update("EmployerDAO.employerUpdateNopwd", dto);
	}
	

}
