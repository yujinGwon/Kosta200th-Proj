package kr.kosta.bus.model;

public class CommuteDTO {
	
	private int comm_no, comm_time;
	
	private String comm_year, comm_month, comm_day, comm_type_d, comm_e_no,
					comm_e_name, comm_e_dname, comm_e_position, comm_work;
	
	public int getComm_no() {
		return comm_no;
	}

	public void setComm_no(int comm_no) {
		this.comm_no = comm_no;
	}

	public int getComm_time() {
		return comm_time;
	}

	public void setComm_time(int comm_time) {
		this.comm_time = comm_time;
	}

	public String getComm_year() {
		return comm_year;
	}

	public void setComm_year(String comm_year) {
		this.comm_year = comm_year;
	}

	public String getComm_month() {
		return comm_month;
	}

	public void setComm_month(String comm_month) {
		this.comm_month = comm_month;
	}

	public String getComm_day() {
		return comm_day;
	}

	public void setComm_day(String comm_day) {
		this.comm_day = comm_day;
	}

	public String getComm_type_d() {
		return comm_type_d;
	}

	public void setComm_type_d(String comm_type_d) {
		this.comm_type_d = comm_type_d;
	}

	public String getComm_e_no() {
		return comm_e_no;
	}

	public void setComm_e_no(String comm_e_no) {
		this.comm_e_no = comm_e_no;
	}

	public String getComm_e_name() {
		return comm_e_name;
	}

	public void setComm_e_name(String comm_e_name) {
		this.comm_e_name = comm_e_name;
	}

	public String getComm_e_dname() {
		return comm_e_dname;
	}

	public void setComm_e_dname(String comm_e_dname) {
		this.comm_e_dname = comm_e_dname;
	}

	public String getComm_e_position() {
		return comm_e_position;
	}

	public void setComm_e_position(String comm_e_position) {
		this.comm_e_position = comm_e_position;
	}

	public String getComm_work() {
		return comm_work;
	}

	public void setComm_work(String comm_work) {
		this.comm_work = comm_work;
	}

	@Override
	public String toString() {
		return "CommuteDTO [comm_no=" + comm_no + ", comm_time=" + comm_time + ", comm_year=" + comm_year
				+ ", comm_month=" + comm_month + ", comm_day=" + comm_day + ", comm_type_d=" + comm_type_d
				+ ", comm_e_no=" + comm_e_no + ", comm_e_name=" + comm_e_name + ", comm_e_dname=" + comm_e_dname
				+ ", comm_e_position=" + comm_e_position + ", comm_work=" + comm_work + "]";
	}
	
}
