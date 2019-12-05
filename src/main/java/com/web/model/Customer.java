package com.web.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="customer")
public class Customer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@NotEmpty
	@Size(min = 5, max = 50)
	@Column(name="name")
	private String name;
	@NotNull
	@Column(name = "email")
	private String email;
	@NotNull
	@Column(name = "phone")
	private String phone;
	@NotNull
	@Column(name= " password")
	private String password;
	@NotNull
	@Size(min = 10, max = 15)
	@Column(name = "confirm")
	private String confirm;
	
	public Customer() {}
	public Customer(String name, String email, String phone, String password,String confirm) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.confirm = confirm;
	}
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirm() {
		return confirm;
	}

	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}

	@Override
	public int hashCode(){
		final int prime = 31;
        int result = 1;
        result = prime * result + id;
        result = prime * result + ((name == null) ? 0 : name.hashCode());
        return result;
	}
	
	public static void main(String[] args) {
		
		
	}
	
	@Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (!(obj instanceof Customer))
            return false;
        Customer other = (Customer) obj;
        if (id != other.id)
            return false;
        if (name == null) {
            if (other.name != null)
                return false;
        } else if (!name.equals(other.name))
            return false;
        return true;
    }
    @Override
    public String toString() {
        return "Customer [id=" + id + ", name=" + name + ", email="+email+",phone="+phone+",password="+password+",confirm="+confirm+"]";
    }
}
