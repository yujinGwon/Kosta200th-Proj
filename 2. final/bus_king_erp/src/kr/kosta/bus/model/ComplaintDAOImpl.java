package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ComplaintDAOImpl implements ComplaintDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<BusDTO> blist(HashMap map) {
		return sqlSession.selectList("ComplaintDAO.blist", map);
	}
	
	@Override
	public List<EmployerDTO> elist(HashMap map) {
		return sqlSession.selectList("ComplaintDAO.elist", map);
	}
	
	@Override
	public List<ComplaintDTO> complaintList(HashMap map) {
		return sqlSession.selectList("ComplaintDAO.complaintList", map) ;
	}

	@Override
	public void complaintInsert(ComplaintDTO dto) {
		sqlSession.insert("ComplaintDAO.complaintInsert", dto);
	}

	@Override
	public void complaintUpdate(ComplaintDTO dto) {
		sqlSession.update("ComplaintDAO.complaintUpdate", dto);
	}

	@Override
	public void complaintDelete(String c_no) {
		sqlSession.delete("ComplaintDAO.complaintDelete", c_no);
	}

	@Override
	public int getcomplaintCount() {
		return sqlSession.selectOne("ComplaintDAO.getcomplaintCount");
	}
	
	@Override
	public ComplaintDTO complaintDetail(String c_no) {
		return sqlSession.selectOne("ComplaintDAO.complaintDetail", c_no);
	}

}
