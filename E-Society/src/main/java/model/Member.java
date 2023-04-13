package model;

public class Member {

	private int id,h_no;
	private String fname,lname,address,join_date,email,password,register_status;
	private long contact;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getH_no() {
		return h_no;
	}
	public void setH_no(int h_no) {
		this.h_no = h_no;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRegister_status() {
		return register_status;
	}
	public void setRegister_status(String register_status) {
		this.register_status = register_status;
	}
	public long getContact() {
		return contact;
	}
	public void setContact(long contact) {
		this.contact = contact;
	}
	
	@Override
	public String toString() {
		return "Member [id=" + id + ", h_no=" + h_no + ", fname=" + fname + ", lname=" + lname + ", address=" + address
				+ ", join_date=" + join_date + ", email=" + email + ", password=" + password + ", register_status="
				+ register_status + ", contact=" + contact + "]";
	}
	
	
}
