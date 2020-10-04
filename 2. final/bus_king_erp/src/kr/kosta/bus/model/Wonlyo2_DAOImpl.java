package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Wonlyo2_DAOImpl implements Wonlyo2_DAO{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<Wonlyo2_DTO> wonlyo2List(HashMap map) {
		 return sqlSession.selectList("Wonlyo2_DAO.wonlyo2List", map);
	}

	@Override
	public void wonlyo2Insert(Wonlyo2_DTO dto) {
		sqlSession.insert("Wonlyo2_DAO.wonlyo2Insert", dto);
		
	}

	@Override
	public int getwonlyo2Count() {
		return sqlSession.selectOne("Wonlyo2_DAO.getwonlyo2Count");
	}

	@Override
	public List<BusDTO> wobuslist(HashMap map) {
		return sqlSession.selectList("Wonlyo2_DAO.wobuslist",map);
	}

	@Override
	public List<WonlyoDTO> wo2List(HashMap map) {
		return sqlSession.selectList("Wonlyo2_DAO.wo2List",map);
	}

	@Override
	public int totalselect() {
		 return sqlSession.selectOne("Wonlyo2_DAO.totalselect");
	}

	@Override
	public void wonlyototal(Wonlyo2_DTO dto) {
		sqlSession.update("Wonlyo2_DAO.wonlyototal",dto);
		
	}

	@Override
	public void delete(Wonlyo2_DTO dto) {
		sqlSession.delete("Wonlyo2_DAO.delete",dto);
		
	}



}
