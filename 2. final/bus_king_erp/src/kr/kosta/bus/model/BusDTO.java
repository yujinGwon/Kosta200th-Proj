package kr.kosta.bus.model;

import java.sql.Date;

public class BusDTO {

	private String b_no;
	private int b_year;
	private String b_energy;
	private Date b_start;
	private String b_type;
	private int b_acc;
	private String b_state;
	private int b_mile;
	private Date b_recent;
	public String getB_no() {
		return b_no;
	}
	public void setB_no(String b_no) {
		this.b_no = b_no;
	}
	public int getB_year() {
		return b_year;
	}
	public void setB_year(int b_year) {
		this.b_year = b_year;
	}
	public String getB_energy() {
		return b_energy;
	}
	public void setB_energy(String b_energy) {
		this.b_energy = b_energy;
	}
	public Date getB_start() {
		return b_start;
	}
	public void setB_start(Date b_start) {
		this.b_start = b_start;
	}
	public String getB_type() {
		return b_type;
	}
	public void setB_type(String b_type) {
		this.b_type = b_type;
	}
	public int getB_acc() {
		return b_acc;
	}
	public void setB_acc(int b_acc) {
		this.b_acc = b_acc;
	}
	public String getB_state() {
		return b_state;
	}
	public void setB_state(String b_state) {
		this.b_state = b_state;
	}
	public int getB_mile() {
		return b_mile;
	}
	public void setB_mile(int b_mile) {
		this.b_mile = b_mile;
	}
	public Date getB_recent() {
		return b_recent;
	}
	public void setB_recent(Date b_recent) {
		this.b_recent = b_recent;
	}
	@Override
	public String toString() {
		return "BusDTO [b_no=" + b_no + ", b_year=" + b_year + ", b_energy=" + b_energy + ", b_start=" + b_start
				+ ", b_type=" + b_type + ", b_acc=" + b_acc + ", b_state=" + b_state + ", b_mile=" + b_mile
				+ ", b_recent=" + b_recent + "]";
	}
	
}
