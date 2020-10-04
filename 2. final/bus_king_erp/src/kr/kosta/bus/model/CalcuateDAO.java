package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

public interface CalcuateDAO {
	
	public List<CalculateDTO> calList(HashMap map);
	public void calInsert(CalculateDTO dto);
	public void calUpdate(CalculateDTO dto);
	public int getCalCount();
	public CalculateDTO getCalculate(String cal_code);
	// 아하... 어카운트 인서트
	public void accountInsert(CalculateDTO dto);
	public String calCode(); // 가장 마지막에 입력된 레코드의 cal_code 가져오기
	public List<BusDTO> getBuslist();
}
