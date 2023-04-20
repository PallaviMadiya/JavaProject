package model;

public class CartModel {
	private int cid,cusid,pid,pprice,total,qty;
	private String pname,pcategory,payment_status;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getCusid() {
		return cusid;
	}
	public void setCusid(int cusid) {
		this.cusid = cusid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPcategory() {
		return pcategory;
	}
	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
	}
	public String getPayment_status() {
		return payment_status;
	}
	public void setPayment_status(String payment_status) {
		this.payment_status = payment_status;
	}
	@Override
	public String toString() {
		return "CartModel [cid=" + cid + ", cusid=" + cusid + ", pid=" + pid + ", pprice=" + pprice + ", total=" + total
				+ ", qty=" + qty + ", pname=" + pname + ", pcategory=" + pcategory + ", payment_status="
				+ payment_status + "]";
	}
	
	
}
