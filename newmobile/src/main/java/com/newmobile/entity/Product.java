package com.newmobile.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.annotations.Expose;

@Entity
public class Product 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Expose
	private int productId;
	@NotEmpty(message="Product Name can not be Empty")
	@Expose
	private String productName;
	@NotEmpty(message="Product Description can not be Empty")
	@Expose
	private String productDescription;
	@Expose
	private int price;
	@Expose
	private int QTY;
	@Expose
	private int Discount;
	@Expose
	private int Amount;
	@Expose
	private int categoryId;
	@Expose
	private int supplierId;
	@Expose
	private int subCategoryid;
	
	@Transient
	private MultipartFile productImg;
	
	public int getSubCategoryid() {
		return subCategoryid;
	}
	public void setSubCategoryid(int subCategoryid) {
		this.subCategoryid = subCategoryid;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	@ManyToOne
	@JoinColumn(name="categoryid", updatable=false, insertable=false, nullable=false)
	@Expose
	private Category category;
	
	@ManyToOne
	@JoinColumn(name="subCategoryid", updatable=false, insertable=false, nullable=false)
	@Expose
	private SubCategory subCategory;
	
	@ManyToOne
	@JoinColumn(name="supplierid", updatable=false, insertable=false, nullable=false)
	@Expose
	private Supplier supplier;
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
	public SubCategory getSubCategory() {
		return subCategory;
	}
	public void setSubCategory(SubCategory subCategory) 
	{
		this.subCategory = subCategory;
	}
	public Supplier getSupplier() 
	{
		return supplier;
	}
	public void setSupplier(Supplier supplier) 
	{
		this.supplier = supplier;
	}
	public MultipartFile getProductImg() {
		return productImg;
	}
	public void setProductImg(MultipartFile productImg) {
		this.productImg = productImg;
	}
	public int getQTY() {
		return QTY;
	}
	public void setQTY(int qTY) {
		QTY = qTY;
	}
	public int getDiscount() {
		return Discount;
	}
	public void setDiscount(int discount) {
		Discount = discount;
	}
	public int getAmount() {
		return Amount;
	}
	public void setAmount(int amount) {
		Amount = amount;
	}
	
}
