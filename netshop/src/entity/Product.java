package entity;

public class Product {
	private int productId;
	private String name;
	private int catId;
	private double price;
	private String pDesc;
	private String attr;
	private String PImage;
	public String getPImage() {
		return PImage;
	}
	public void setPImage(String image) {
		PImage = image;
	}
	public Product(){}
	public Product(int productId, String name, int catId, double price,
			String desc, String attr) {
		super();
		this.productId = productId;
		this.name = name;
		this.catId = catId;
		this.price = price;
		this.pDesc = desc;
		this.attr = attr;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCatId() {
		return catId;
	}
	public void setCatId(int catId) {
		this.catId = catId;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getPDesc() {
		return pDesc;
	}
	public void setPDesc(String pDesc) {
		this.pDesc = pDesc;
	}
	public String getAttr() {
		return attr;
	}
	public void setAttr(String attr) {
		this.attr = attr;
	}
}
