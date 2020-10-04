package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

public interface AccountDAO {

	//public List<AccountDTO> selboxlist(HashMap map);
	
	public List<AccountDTO> accountListState(HashMap map);
	public List<AccountDTO> accountListCode(HashMap map);
	public void accountUpdate(AccountDTO dto);
	public AccountDTO getAccount(String ac_code);
	public int getAccountCountState(String cnt_state);
	public int getAccountCountCode(String cnt_code);
	
}
