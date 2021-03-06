package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity  
@Table(name = "manager")  
public class Manager {  
    /** 
     * 管理员id 必须有 无参数构造函数
     */  
    @Id  
    @Column(name = "id")  
    @GeneratedValue(strategy = GenerationType.IDENTITY)  
    private int id;  
      
    /** 
     * 管理员账户名 
     */  
    @Column(name = "name", length = 50)  
    private String name;  
      
    /** 
     * 管理员登录密码 
     */  
    @Column(name = "password", length = 50)  
    private String password;  
  
      

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public Manager(int id, String name, String password) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
	}

	public Manager() {
	}
   
}
