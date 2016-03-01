package entity;
import java.util.Date;


public class Userinfo {
	private int userId;
	private String name;
	private String password;
	private String phone;
	private String address;
	private String zipcode;
	private String status;
	private Date createDate;
	public Userinfo(){}
	public Userinfo( String name, String password, String phone, String address,
			String zipcode, String status, Date createDate){
		this.name = name;
		this.password = password;
		this.phone = phone;
		this.address = address;
		this.zipcode = zipcode;
		this.status = status;
		this.createDate = createDate;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	

}
