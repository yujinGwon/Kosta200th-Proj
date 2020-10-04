package kr.kosta.bus.model;

public class ComplaintDTO {

	private int c_no;
	private String c_title, c_type, c_content, c_b_no, c_e_no, c_e_name;
	private String c_date;

	public int getC_no() {
		return c_no;
	}

	public void setC_no(int c_no) {
		this.c_no = c_no;
	}

	public String getC_title() {
		return c_title;
	}

	public void setC_title(String c_title) {
		this.c_title = c_title;
	}

	public String getC_type() {
		return c_type;
	}

	public void setC_type(String c_type) {
		this.c_type = c_type;
	}

	public String getC_content() {
		return c_content;
	}

	public void setC_content(String c_content) {
		this.c_content = c_content;
	}

	public String getC_b_no() {
		return c_b_no;
	}

	public void setC_b_no(String c_b_no) {
		this.c_b_no = c_b_no;
	}

	public String getC_e_no() {
		return c_e_no;
	}

	public void setC_e_no(String c_e_no) {
		this.c_e_no = c_e_no;
	}

	public String getC_e_name() {
		return c_e_name;
	}

	public void setC_e_name(String c_e_name) {
		this.c_e_name = c_e_name;
	}

	public String getC_date() {
		return c_date;
	}

	public void setC_date(String c_date) {
		this.c_date = c_date;
	}

	@Override
	public String toString() {
		return "ComplaintDTO [c_no=" + c_no + ", c_title=" + c_title + ", c_type=" + c_type + ", c_content=" + c_content
				+ ", c_b_no=" + c_b_no + ", c_e_no=" + c_e_no + ", c_e_name=" + c_e_name + ", c_date=" + c_date + "]";
	}

}
