package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

public interface FuelDAO {
	public List<FuelDTO> fuelList(HashMap map);
	public void fuelInsert(FuelDTO dto);
	public void fuelUpdate(FuelDTO dto);
	public void fuelDelete(String f_code);
	public int getfuelCount();
	//버스번호 
	public List<BusDTO> bflist(HashMap map);
	//회계등록
	public void faccInsert(FuelDTO dto);
	public FuelDTO fselect(FuelDTO dto);
}
