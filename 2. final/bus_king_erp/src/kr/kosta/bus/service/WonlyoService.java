package kr.kosta.bus.service;

import java.util.HashMap;
import java.util.List;

import kr.kosta.bus.model.WonlyoDTO;

public interface WonlyoService {
	
	public List<WonlyoDTO> wonlyoList(HashMap map);
	public void wonlyoInsert(WonlyoDTO dto);
	public void wonlyoUpdate(WonlyoDTO dto);
	public int getwonlyoCount();
	public WonlyoDTO selectBy(WonlyoDTO dto);
}
