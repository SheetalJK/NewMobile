package com.newmobile.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;



@Entity
public class Customer 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int customerId;
	private String firstname;
	private String lastname;
	private String email;
	private String phonenumber;
	
	@OneToOne/*(cascade=CascadeType.ALL)*/
	@JoinColumn(name="userId")
	private User user;
	
	@NotEmpty/*(message="Billing Address is mandatory")*/
	@OneToOne/*(cascade=CascadeType.ALL)*/
	@JoinColumn(name="billingAddressId")
	private BillingAdd billingAdd;
	
	@OneToOne/*(cascade=CascadeType.ALL)*/
	@JoinColumn(name="shippingAddressId")
	private ShippingAddress shippingAddress;
	
	@OneToOne/*(cascade=CascadeType.ALL)*/
	@JoinColumn(name="cartId")
	private Cart cart;
	
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public BillingAdd getBillingAdd() {
		return billingAdd;
	}
	public void setBillingAdd(BillingAdd billingAdd) {
		this.billingAdd = billingAdd;
	}
	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	

}
