package dto;

import java.io.Serializable;

public class user  implements Serializable{
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String id; 
	private String password;
	private String name;
	
	
	public user(){
		super();
	}
	
	
	
	public String getId() {
		return id;
	}
	
	public void setId(String id){
		this.id = id;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password){
		this.password = password;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name){
		this.name = name;
	}
	
	
}
