package model;

public class Pro_8_Student {
	private int id;
	private long contact;
	private String fname, lname, email, gender, password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public long getContact() {
		return contact;
	}
	public void setContact(long contact) {
		this.contact = contact;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Pro_8_Student [id=" + id + ", contact=" + contact + ", fname=" + fname + ", lname=" + lname + ", email="
				+ email + ", gender=" + gender + ", password=" + password + "]";
	}
	
}
