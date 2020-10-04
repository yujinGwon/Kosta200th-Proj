package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

public interface PayDAO {
	
	public PayDTO payList(HashMap map);	// ����Ʈ... 
	public void payInsert(PayDTO dto);	// �μ�Ʈ
	
	//년도
	public List<PayDTO> ylist(HashMap map);
	//월
	public List<PayDTO> mlist(HashMap map);
	//사번
	public List<PayDTO> elist(HashMap map);
	
	//회계
	public void accoInsert(PayDTO dto);
	
	public String payCode(); // 가장 마지막에 입력된 pay_code 가져오기...
	
	//중복체크
		public int payCheck(PayDTO dto);
	
}
