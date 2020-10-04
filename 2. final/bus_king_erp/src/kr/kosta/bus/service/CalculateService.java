package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import kr.kosta.bus.model.BusDTO;
import kr.kosta.bus.model.CalculateDTO;

public interface CalculateService {
	public List<CalculateDTO> calList(HashMap map);
	public void calInsert(CalculateDTO dto);
	public void calUpdate(CalculateDTO dto);
	public CalculateDTO getCalculate(String cal_code);
	public int getCalCount();
	public void accountInsert(CalculateDTO dto); // 정산에 입력하면 -> 회계에도 넣게끔
	public String calCode(); // 가장 마지막에 입력된 cal_code 가져오기...
	public List<BusDTO> getBuslist();
}
