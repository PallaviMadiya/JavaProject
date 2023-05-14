package model;

public class Maintenance {

	private int mp_id,mid;
	private String m_date;
	private long m_amount;
	public int getMp_id() {
		return mp_id;
	}
	public void setMp_id(int mp_id) {
		this.mp_id = mp_id;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getM_date() {
		return m_date;
	}
	public void setM_date(String m_date) {
		this.m_date = m_date;
	}
	public long getM_amount() {
		return m_amount;
	}
	public void setM_amount(long m_amount) {
		this.m_amount = m_amount;
	}
	@Override
	public String toString() {
		return "MaintenancePayment [mp_id=" + mp_id + ", mid=" + mid + ", m_date=" + m_date + ", m_amount=" + m_amount
				+ "]";
	}
	
	
	
}
