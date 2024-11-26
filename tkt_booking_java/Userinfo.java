package tkt_booking;

public class Userinfo {
	private int userId;
	private String userName;
	private String password;
	private String phnNo;
	private String email;
	private String address;
	
	public Userinfo() {
		super();
	}

	public Userinfo(int userId, String userName, String password, String phnNo, String email, String address) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.phnNo = phnNo;
		this.email = email;
		this.address = address;
	}
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhnNo() {
		return phnNo;
	}
	public void setPhnNo(String phnNo) {
		this.phnNo = phnNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	

}
