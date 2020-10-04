package kr.kosta.bus.service;

import java.util.HashMap;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.kosta.bus.model.AccountDAO;
import kr.kosta.bus.model.AccountDTO;

@Service
public class AccountServiceImpl implements AccountService {

	@Inject
	AccountDAO accountDAO;
	
//	@Override
//	public List<AccountDTO> selboxlist(HashMap map) {
//		return accountDAO.selboxlist(map);
//	}
	
	@Override
	public List<AccountDTO> accountListState(HashMap map) {
		return accountDAO.accountListState(map);
	}
	
	@Override
	public List<AccountDTO> accountListCode(HashMap map) {
		return accountDAO.accountListCode(map);
	}
	
	@Override
	public void accountUpdate(AccountDTO dto) {
		accountDAO.accountUpdate(dto);
	}
	@Override
	public AccountDTO getAccount(String ac_code) {
		return accountDAO.getAccount(ac_code);
	}

	@Override
	public int getAccountCountState(String cnt_state) {
		return accountDAO.getAccountCountState(cnt_state);
	}
	
	@Override
	public int getAccountCountCode(String cnt_code) {
		return accountDAO.getAccountCountCode(cnt_code);
	}




}
