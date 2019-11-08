package dao;

import java.util.ArrayList;

import dto.product;


public class productlist {
	
	private ArrayList<product> listOfProduct = new ArrayList<product>();
	private static productlist instance = new productlist();
	
	public static productlist getInstance(){
		return instance;
	}
	
	public productlist(){
		product dd = new product("1", "��", 35000);
		dd.setCategory("������");
		dd.setCondition("�Ż�ǰ");
		dd.setDescription("����");
		dd.setImage("aaaaa.jpg");
		dd.setManufacturer("������");
		dd.setUnitsInStock(1000);
		
		listOfProduct.add(dd);
		
	}
	
	public ArrayList<product> getAllProducts(){
		return listOfProduct;
	}
	
	public product getProductById(String productId){
		product ProductById = null;
		
		for(int i = 0; i < listOfProduct.size(); i++){
			product product = listOfProduct.get(i);
			if(product != null && product.getProductId() != null && product.getProductId().equals(productId)){
				ProductById = product;
				break;
			}
		}
		
		return ProductById;
	}
	
	public void addProduct(product product){
		listOfProduct.add(product);
	}
	

}
