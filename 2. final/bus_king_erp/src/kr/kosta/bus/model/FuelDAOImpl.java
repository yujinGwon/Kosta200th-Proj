package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FuelDAOImpl implements FuelDAO{

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<FuelDTO> fuelList(HashMap map) {
		return sqlSession.selectList("FuelDAO.fuelList",map);
	}

	@Override
	public void fuelInsert(FuelDTO dto) {
		sqlSession.insert("FuelDAO.fuelInsert",dto);
	}

	@Override
	public void fuelUpdate(FuelDTO dto) {
		sqlSession.update("FuelDAO.fuelUpdate",dto);
		
	}

	@Override
	public void fuelDelete(String f_code) {
		sqlSession.delete("FuelDAO.fuelDelete",f_code);
		
	}

	@Override
	public int getfuelCount() {
		return sqlSession.selectOne("FuelDAO.getfuelCount");
	}

	@Override
	public List<BusDTO> bflist(HashMap map) {
		return sqlSession.selectList("FuelDAO.bflist",map);
	}

	@Override
	public void faccInsert(FuelDTO dto) {
		sqlSession.insert("FuelDAO.faccInsert",dto);
	}

	@Override
	public FuelDTO fselect(FuelDTO dto) {
		return sqlSession.selectOne("FuelDTO.fselect",dto);
	}	
	
}
