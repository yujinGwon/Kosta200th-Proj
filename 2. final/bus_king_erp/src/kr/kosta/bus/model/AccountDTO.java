package kr.kosta.bus.model;

public class AccountDTO {
	/* 
		AC_CODE VARCHAR2(20) primary key,
		AC_NAME VARCHAR2(40),
		AC_COST NUMBER,
		AC_DATE DATE,
		AC_STATE VARCHAR2(10),
		AC_BIGO VARCHAR2(40)
	*/
	private String ac_code, ac_name, ac_state, ac_bigo, ac_date;
	private int ac_cost;
	
	public String getAc_code() {
		return ac_code;
	}
	public void setAc_code(String ac_code) {
		this.ac_code = ac_code;
	}
	public String getAc_name() {
		return ac_name;
	}
	public void setAc_name(String ac_name) {
		this.ac_name = ac_name;
	}
	public String getAc_state() {
		return ac_state;
	}
	public void setAc_state(String ac_state) {
		this.ac_state = ac_state;
	}
	public String getAc_bigo() {
		return ac_bigo;
	}
	public void setAc_bigo(String ac_bigo) {
		this.ac_bigo = ac_bigo;
	}
	
	public int getAc_cost() {
		return ac_cost;
	}
	public void setAc_cost(int ac_cost) {
		this.ac_cost = ac_cost;
	}
	@Override
	public String toString() {
		return "AccountDTO [ac_code=" + ac_code + ", ac_name=" + ac_name + ", ac_state=" + ac_state + ", ac_bigo="
				+ ac_bigo + ", ac_date=" + ac_date + ", ac_cost=" + ac_cost + "]";
	}
	public String getAc_date() {
		return ac_date;
	}
	public void setAc_date(String ac_date) {
		this.ac_date = ac_date;
	}
	
}
