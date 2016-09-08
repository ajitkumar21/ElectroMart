package com.niit.electroMart.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.niit.electroMart.Model.Cart;
import com.niit.electroMart.Model.Category;
import com.niit.electroMart.Model.Product;
import com.niit.electroMart.Model.Supplier;
import com.niit.electroMart.Model.UserDetails;
import com.niit.electroMart.Service.CartItemService;
import com.niit.electroMart.Service.CartService;
import com.niit.electroMart.Service.CategoryService;
import com.niit.electroMart.Service.ProductService;
import com.niit.electroMart.Service.SupplierService;
import com.niit.electroMart.Service.UserDetailsService;
import com.niit.electroMart.Service.UserService;

@Controller
public class PageController {
	
	@Autowired
	private UserDetailsService userDetailsService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private CartItemService cartItemService;

	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private SupplierService supplierService;
	
	@Autowired
	private CartService cartService;

	
	

	
	
	/*
	 * page controls
	 */
	@RequestMapping(value = {"/", "/index"})
	public String home()
	{
		return "guest/index" ;
	}
	
	@RequestMapping(value = {"/aboutus"})
	public String aboutus()
	{
		return "guest/aboutus";
	}
	
	/*
	 * 
	 * LOGIN
	 * 
	 */
	
	@RequestMapping(value = {"/login"})
	public String login(Model model)
	{
		//model.addAttribute("userDetails", new UserDetails());
		
		return "guest/login" ;
	}
	
	@RequestMapping(value={"/logout"}, method = RequestMethod.GET)
	 public String logout(HttpServletRequest request, HttpServletResponse response) {
	 
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
	    if (auth != null){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
		
	  return "redirect:/login";
	 
	 }

	
	
	/*
	 * 
	 * REGISTER
	 * 
	 */
	
	@RequestMapping(value = {"/register"})
	public String Register(Model model)
	{
		model.addAttribute("UserDetails", new UserDetails());
		return "guest/register" ;
	}
	
	
	@RequestMapping(value = {"/register"}, method=RequestMethod.POST)
	public String newRegister(@Valid @ModelAttribute("UserDetails")UserDetails user, BindingResult results, Model model)
	{
	   if(results.hasErrors())
		{
			return "guest/register";
		}
		
		this.userDetailsService.add(user);
		
		return "redirect:/login";

	}
	
	
	/*
	 * PRODUCT CATEGORY and SUPPPLIER 
	 */
	
	@RequestMapping(value = {"/Product"})
	public String Product(Model model)
	{
		model.addAttribute("Product", new Product());
		
        model.addAttribute("categories", this.categoryService.getCategories());
		
		model.addAttribute("suppliers", this.supplierService.getSuppliers());

		return "admin/Product" ;
	}
	
	
	@RequestMapping(value = {"/Product/add"}, method=RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute("Product")Product product, BindingResult results, Model model)
	{
		
		if(results.hasErrors()) {
			
			return "admin/Product";
			
		}
		
		if(!product.getFile().getOriginalFilename().equals("")){
			product.setImageUrl(uploadImage(product.getFile(), product.getId()));
		}

		this.productService.addProduct(product);
		
		return "redirect:/ViewProduct" ;
	}
	
	public String uploadImage(MultipartFile mutipart, String productId)
	{
		String upload = "/resources/images/product/";
		
		//get the file name 
		String fileName = mutipart.getOriginalFilename();
		
		//get the real path and create the directory if it does not exists
		
		String realPath = request.getServletContext().getRealPath(upload);
		if(!(new File(realPath).exists())){
			new File(realPath).mkdirs();
		}
		
		//transfer
		String filePath = realPath + File.separator + productId + fileName.substring(fileName.lastIndexOf("."));
		
		File destination = new File(filePath);
		
		try {
			
			mutipart.transferTo(destination);
			
		} catch (Exception e) {}
		
		
		return productId + fileName.substring(fileName.lastIndexOf("."));
	}

	
	
	@RequestMapping(value = {"/ViewProduct"})
	public String viewProduct(Model model){
		
		model.addAttribute("productList", this.productService.getAllProduct());
		
		return "admin/ViewProduct";
	}

	

	
	
	@RequestMapping(value={"/Category"})
	public String category(Model model){
		model.addAttribute("Category", new Category());
		
		return "admin/Category";
	}
	
	
	@RequestMapping(value={"/Category/add"}, method = RequestMethod.POST)
	public String addCategory(@Valid @ModelAttribute("Category") Category category, BindingResult results, Model model)
	{
		if(results.hasErrors()){
			return "admin/Category";
		}
		
		this.categoryService.addCategory(category);
		
		return "redirect:/ViewCategory";
		
	}

	
	@RequestMapping(value={"/ViewCategory"})
	public String ViewCategory(Model model){
		
		model.addAttribute("categoryList", this.categoryService.getAllCategory());
		
		return "admin/ViewCategory";
	}


	@RequestMapping(value={"/Supplier"})
	public String supplier(Model model)
	{
		model.addAttribute("Supplier", new Supplier());
		
		return "admin/Supplier";
	}
	
	
	@RequestMapping(value = {"/Supplier/add"}, method=RequestMethod.POST)
	public String addSupplier(@Valid @ModelAttribute("Supplier")Supplier supplier, BindingResult results, Model model)
	{
		if(results.hasErrors())
		{
			return "admin/Supplier";
		}
		
		this.supplierService.addSupplier(supplier);
		
		return "redirect:/ViewSupplier" ;
	}

	
	
	
	@RequestMapping(value={"/ViewSupplier"})
	public String ViewSupplier(Model model){
		
		model.addAttribute("supplierList", this.supplierService.getAllSupplier());
		
		return "admin/ViewSupplier";
	}
	
	
	
/*   
 *  DELETE and UPDATE 
 */
	@RequestMapping(value="/Category/delete/{id}")
	public String deleteCatagory(@PathVariable("id")String id, ModelMap model){
		this.categoryService.deleteCategory(id);
		
		return "redirect:/ViewCategory";
	}
	
	@RequestMapping(value ="/Category/edit/{id}")
	public String editCategory(@PathVariable("id")String id, Model model){
		
		model.addAttribute("Category", this.categoryService.getCategoryById(id));
		
		return "admin/Category";
	}
	
	@RequestMapping(value="/Product/delete/{id}")
	public String deleteProduct(@PathVariable("id")String id, ModelMap model){
		this.productService.deleteProduct(id);
		
		return "redirect:/ViewProduct";
	}
	
	
	@RequestMapping(value="/Product/edit/{id}")
	public String editProduct(@PathVariable("id")String id,Model model){
		model.addAttribute("Product", this.productService.get(id));
        model.addAttribute("categories", this.categoryService.getCategories());
		model.addAttribute("suppliers", this.supplierService.getSuppliers());

		return "admin/Product";
	}
	
	
	
	@RequestMapping(value="/Supplier/delete/{id}")
	public String deleteSupplier(@PathVariable("id")String id, ModelMap model){
		this.supplierService.deleteSupplier(id);
		
		return "redirect:/ViewSupplier";
	}
	
	@RequestMapping(value="/Supplier/edit/{id}")
	public String editSupplier(@PathVariable("id")String id,Model model){
		model.addAttribute("Supplier", this.supplierService.getSupplierById(id));
		
		return "admin/Supplier";
	}
	
	
	/*
	 * 
	 *CART  
	 * 
	 */;
	
	@RequestMapping(value ={"/Cart"})
	public String viewCart(Model model){
		
		String userId = SecurityContextHolder.getContext().getAuthentication().getName();
		
		UserDetails user = this.userDetailsService.getByUsername(userId);
		
		Cart cart = this.cartService.getCart(user);
		
		model.addAttribute("cartList", this.cartItemService.getItemByUserId(userId));
		
		model.addAttribute("grandTotal", cart.getGrandTotal());
				
		return "user/Cart";
	}
	

	
	

	
	@RequestMapping(value = {"/Product/AddToCart/{id}"})
	public String ViewCart(@PathVariable("id")String id ,Model model){
		
		String userName = SecurityContextHolder.getContext().getAuthentication().getName();
		
		UserDetails user = this.userDetailsService.getByUsername(userName);
		
		this.cartItemService.addCartItem(this.productService.get(id), user);
				
		model.addAttribute("message", "Successfully Added");
		
		return "redirect:/ViewProduct";
	}
	
	
	@RequestMapping(value={"/CartItem/delete/{id}"} )
	 public String deleteCart(@PathVariable("id") int id, Model model )
	 {
	   this.cartItemService.deleteCartItem(id);
	   model.addAttribute("message", "Successfully deleted");
	   return "redirect:/Cart";
	 }
	
	
	 
	
	@RequestMapping(value={"/Product/View/{id}"})
	public String viewProduct(@PathVariable("id") String id, Model model){
		
		Product product = this.productService.get(id);
				model.addAttribute("Product", product);
		
		return "user/View"; 
	}

	
	


}


	
	
	
	


