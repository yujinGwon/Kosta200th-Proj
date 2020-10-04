package kr.kosta.bus.model;

import java.util.HashMap;
import java.util.List;

public interface WonlyoDAO {
	
	
	public List<WonlyoDTO> wonlyoList(HashMap map);
	public void wonlyoInsert(WonlyoDTO dto);
	public void wonlyoUpdate(WonlyoDTO dto);
	public int getwonlyoCount();
	public WonlyoDTO selectBy(WonlyoDTO dto);
}
