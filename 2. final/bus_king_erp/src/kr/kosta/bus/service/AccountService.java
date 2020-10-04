package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import kr.kosta.bus.model.AccountDTO;

public interface AccountService {

		//public List<AccountDTO> selboxlist(HashMap map);
		public List<AccountDTO> accountListState(HashMap map);
		public List<AccountDTO> accountListCode(HashMap map);
		public void accountUpdate(AccountDTO dto);	
		public AccountDTO getAccount(String ac_code);
		public int getAccountCountState(String cnt_state);
		public int getAccountCountCode(String cnt_code);
		
	}

