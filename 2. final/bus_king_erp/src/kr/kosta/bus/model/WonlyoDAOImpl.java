package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class WonlyoDAOImpl implements WonlyoDAO{

	@Autowired
	 SqlSession sqlSession;
	
	
	@Override
	public List<WonlyoDTO> wonlyoList(HashMap map) {
		return sqlSession.selectList("WonlyoDAO.wonlyoList",map);
	}

	@Override
	public void wonlyoInsert(WonlyoDTO dto) {
		sqlSession.insert("WonlyoDAO.wonlyoInsert",dto);
	}



	@Override
	public void wonlyoUpdate(WonlyoDTO dto) {
		sqlSession.update("WonlyoDAO.wonlyoUpdate", dto);
	}

	@Override
	public int getwonlyoCount() {
		return sqlSession.selectOne("getwonlyoCount()");
	}

	@Override
	public WonlyoDTO selectBy(WonlyoDTO dto) {
		return sqlSession.selectOne("WonlyoDAO.selectBy", dto);
		
	}


	
}
