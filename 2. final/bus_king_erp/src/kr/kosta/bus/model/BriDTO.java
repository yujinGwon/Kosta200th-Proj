package kr.kosta.bus.model;

public class BriDTO {
	private String plate;
	private int seat, station;
	
	public String getPlate() {
		return plate;
	}
	public void setPlate(String plate) {
		this.plate = plate;
	}
	public int getSeat() {
		return seat;
	}
	public void setSeat(int seat) {
		this.seat = seat;
	}
	public int getStation() {
		return station;
	}
	public void setStation(int station) {
		this.station = station;
	}
	@Override
	public String toString() {
		return "['" + plate + "', " + seat + ", " + station + "]";
	}
	
	
}
