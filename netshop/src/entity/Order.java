package entity;

public class Order {
	private int orderId;
	private String username;
	private String zipcode;
	private String phone;
	private String creditcard;
	private double total;

	/**
	 * @param args
	 */
	public Order( String username, String zipcode,
			String phone, String creditcard, double total) {
		super();
		
		this.username = username;
		this.zipcode = zipcode;
		this.phone = phone;
		this.creditcard = creditcard;
		this.total = total;
	}
	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCreditcard() {
		return creditcard;
	}

	public void setCreditcard(String creditcard) {
		this.creditcard = creditcard;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

}
