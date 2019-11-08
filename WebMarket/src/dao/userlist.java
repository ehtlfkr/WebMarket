package dao;

import java.util.ArrayList;

import dto.user;


public class userlist {
	
	private ArrayList<user> listOfuser = new ArrayList<user>();
	private static userlist instance = new userlist();
	
	public static userlist getInstance(){
		return instance;
	}
	
	public userlist(){
		user dd = new user();
		dd.setId("admin");
		dd.setPassword("1234");
		dd.setName("admin");
		
		listOfuser.add(dd);
		
	}
	
	public ArrayList<user> getAlluser(){
		return listOfuser;
	}
	
	public user getUserById(String id){
		user UserById = null;
		
		for(int i = 0; i < listOfuser.size(); i++){
			user user = listOfuser.get(i);
			if(user != null && user.getId() != null && user.getId().equals(id)){
				UserById = user;
				break;
			}
		}
		
		return UserById;
	}
	
	public void addUser(user user){
		listOfuser.add(user);
	}
	

}
