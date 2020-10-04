package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AccountDAOImpl implements AccountDAO {

	@Autowired
	SqlSession sqlsession;
	
	@Override
	public List<AccountDTO> accountListState(HashMap map) {
		return sqlsession.selectList("AccountDAO.accountListState", map);
	}
	
	@Override
	public List<AccountDTO> accountListCode(HashMap map) {
		return sqlsession.selectList("AccountDAO.accountListCode", map);
	}

//	@Override
//	public List<AccountDTO> selboxlist(HashMap map) {
//		// TODO Auto-generated method stub
//		return sqlsession.selectList("AccountDAO.selboxlist", map);
//	}
	
	@Override
	public void accountUpdate(AccountDTO dto) {
		sqlsession.update("AccountDAO.accountUpdate", dto);
	}
	@Override
	public AccountDTO getAccount(String ac_code) {
		return sqlsession.selectOne("AccountDAO.getAccount", ac_code);
	}

	@Override
	public int getAccountCountState(String cnt_state) {
		return sqlsession.selectOne("AccountDAO.getAccountCountState", cnt_state);
	}
	
	@Override
	public int getAccountCountCode(String cnt_code) {
		return sqlsession.selectOne("AccountDAO.getAccountCountCode", cnt_code);
	}



}
