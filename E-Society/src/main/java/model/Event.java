package model;

public class Event {
	
	private int eid;
	private String e_name,e_date,e_desc,e_image;
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getE_name() {
		return e_name;
	}
	public void setE_name(String e_name) {
		this.e_name = e_name;
	}
	public String getE_date() {
		return e_date;
	}
	public void setE_date(String e_date) {
		this.e_date = e_date;
	}
	public String getE_desc() {
		return e_desc;
	}
	public void setE_desc(String e_desc) {
		this.e_desc = e_desc;
	}
	public String getE_image() {
		return e_image;
	}
	public void setE_image(String e_image) {
		this.e_image = e_image;
	}
	@Override
	public String toString() {
		return "Event [eid=" + eid + ", e_name=" + e_name + ", e_date=" + e_date + ", e_desc=" + e_desc + ", e_image="
				+ e_image + "]";
	}
	
	

}
