package com.newmobile.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.newmobile.entity.Category;
import com.newmobile.entity.Product;
import com.newmobile.entity.ProductView;
import com.newmobile.entity.SubCategory;
import com.newmobile.entity.Supplier;
import com.newmobile.serviceimpl.CategoryService;
import com.newmobile.serviceimpl.ProductService;
import com.newmobile.serviceimpl.SubCategoryService;
import com.newmobile.serviceimpl.SupplierService;

@Controller
public class ProductController 
{
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private SubCategoryService subCategoryService;
	
	@Autowired
	private SupplierService supplierService;
	
	@RequestMapping("/product")
	public String getProduct(Model model)
	{
		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("subcategory", new SubCategory());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", productService.listProduct());
		model.addAttribute("categoryList",categoryService.listCategory());
		model.addAttribute("subCategoryList",subCategoryService.subListCategory());
		model.addAttribute("supplierList",supplierService.listSupplier());
		
		//model.addAttribute("productlistJSON", productService.listProductByJSON());
		
		return "ProductForm";
	}
	
	@RequestMapping("/addproduct")
	public String addProduct(@Valid@ModelAttribute("product")Product product,BindingResult result, Model model)
	{
		if(result.hasErrors())
		{
			model.addAttribute("supplierList", supplierService.listSupplier());
			model.addAttribute("subCategoryList", subCategoryService.subListCategory());
			model.addAttribute("categoryList", categoryService.listCategory());
						
			return "ProductForm";
		}
						
		Category category=categoryService.getCategoryByName(product.getCategory().getCategoryName());
		categoryService.addCategory(category);
		product.setCategory(category);
		product.setCategoryId(category.getCategoryId());
		
		SubCategory subcategory=subCategoryService.subGetCategoryByName(product.getSubCategory().getSubCategoryname());
		subCategoryService.subAddCategory(subcategory);
		product.setSubCategory(subcategory);
		product.setSubCategoryid(subcategory.getSubCategoryid());
		
		Supplier supplier=supplierService.getSupplierByName(product.getSupplier().getSupplierName());
		supplierService.addSupplier(supplier);
		product.setSupplier(supplier);
		product.setSupplierId(supplier.getSupplierId());
		
		product.setAmount(product.getPrice() * product.getQTY());
		
		productService.addProduct(product);
		
		//Multipart File Upload
		String path="D:\\SheetalK\\FinalProject\\newmobile\\src\\main\\webapp\\resources\\Product\\";
		path = path + "" + product.getProductId()+".jpg";
		System.out.println("Image Path is:"+path);
		try{
			File f = new File(path);
			MultipartFile m = product.getProductImg();
			byte[]b = m.getBytes();
			FileOutputStream fs = new FileOutputStream(f);
			BufferedOutputStream bs = new BufferedOutputStream(fs);
			bs.write(b);
			bs.close();
		}
		catch (Exception e)
		{
			System.out.println("Error while image Input");
		}
			
		//model.addAttribute("productlistJSON", productService.listProductByJSON());
		
		return "redirect:/product";
	}
	@RequestMapping(value="/editproduct-{productId}", method=RequestMethod.GET)
	public String editProduct (@PathVariable("productId") int productId,Model model)
	{
		Product product=productService.getProductById(productId);
		System.out.println("id is:"+product.getProductId());
		model.addAttribute("product", product);
		model.addAttribute("productList",productService.listProduct());
		model.addAttribute("supplierList",supplierService.listSupplier());
		model.addAttribute("subCategoryList",subCategoryService.subListCategory());
		model.addAttribute("categoryList",categoryService.listCategory());
		
		//model.addAttribute("productlistJSON", productService.listProductByJSON());
		return "ProductForm";
	}
	@RequestMapping("/deleteproduct-{productId}")
	public String deleteProduct(@PathVariable("productId") int productId)
	{
		productService.deleteProduct(productId);
		return "redirect:/product";
	}
	@RequestMapping(value="/viewproduct-{productId}", method=RequestMethod.GET)
	public String viewProduct (@PathVariable("productId") int productId,Model model)
	{
		Product p = productService.getProductById(productId);
		Gson e = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String productData = e.toJson(p);
		model.addAttribute("productData", productData);
		return "ViewProduct";
	}
	
	
}
