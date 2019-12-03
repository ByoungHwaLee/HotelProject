package member.model;

public class Member {
	private int m_num;
	private String m_email;
	private String m_password;
	private String m_nickname;
	private String m_name;
	private String m_phone;
	
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getM_password() {
		return m_password;
	}
	public void setM_password(String m_password) {
		this.m_password = m_password;
	}
	public String getM_nickname() {
		return m_nickname;
	}
	public void setM_nickname(String m_nickname) {
		this.m_nickname = m_nickname;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	
	public Member(int m_num, String m_email, String m_password, String m_nickname, String m_name, String m_phone) {
		super();
		this.m_num = m_num;
		this.m_email = m_email;
		this.m_password = m_password;
		this.m_nickname = m_nickname;
		this.m_name = m_name;
		this.m_phone = m_phone;
	}
	
	public Member() {
		super();
	}
}
