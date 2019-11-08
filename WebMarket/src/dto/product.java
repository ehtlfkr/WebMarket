package dto;

import java.io.Serializable;

public class product  implements Serializable{
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String productId; //상품아이디
	private String pname; //이름
	private Integer unitPrice; //가격
	private String description; //설명
	private String manufacturer; //제조사
	private String category; //분류
	private long unitsInStock; //재고수
	private String condition; //신상 중고 재생
	private String image; //이미지
	
	
	public product(){
		super();
	}
	
	public product(String productId, String pname, Integer unitPrice) {
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;

	}
	
	
	public String getProductId() {
		return productId;
	}
	
	public void setProductId(String productId){
		this.productId = productId;
	}
	
	public String getPname() {
		return pname;
	}
	
	public void setPname(String pname){
		this.pname = pname;
	}
	
	public Integer getUnitPrice() {
		return unitPrice;
	}
	
	public void setUnitPrice(Integer unitPrice){
		this.unitPrice = unitPrice;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description){
		this.description = description;
	}
	
	public String getManufacturer() {
		return manufacturer;
	}
	
	public void setManufacturer(String manufacturer){
		this.manufacturer = manufacturer;
	}
	
	public String getCategory() {
		return category;
	}
	
	public void setCategory(String category){
		this.category = category;
	}
	
	public long getUnitsInStock() {
		return unitsInStock;
	}
	
	public void setUnitsInStock(long unitsInStock){
		this.unitsInStock = unitsInStock;
	}
	
	public String getCondition() {
		return condition;
	}
	
	public void setCondition(String condition){
		this.condition = condition;
	}
	
	public String getImage() {
		return image;
	}
	
	public void setImage(String image){
		this.image = image;
	}
	
	
}
