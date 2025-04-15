package com.grownited.controller.User;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.CartEntity;
import com.grownited.entity.CategoryEntity;
import com.grownited.entity.CityEntity;
import com.grownited.entity.OrderEntity;
import com.grownited.entity.ProductEntity;
import com.grownited.entity.StateEntity;
import com.grownited.entity.SubcategoryEntity;
import com.grownited.entity.UserAddressEntity;
import com.grownited.entity.UserEntity;
import com.grownited.entity.reviewsEntity;
import com.grownited.repository.CartRepository;
import com.grownited.repository.CityRepositoty;
import com.grownited.repository.OrderRepository;
import com.grownited.repository.ProductRepository;
import com.grownited.repository.ReviewRepository;
import com.grownited.repository.UserAddressRepository;
import com.grownited.repository.UserRepository;

import jakarta.servlet.http.HttpSession;


@Controller
public class UserController {
	
	@Autowired
	ProductRepository repoproductuser;
	
	
	
	@Autowired
	UserRepository repositoryUser;
	
	@Autowired
	UserAddressRepository useraddressrepository;
	
	@Autowired
	ProductRepository repoproduct;
	
	@Autowired 
	Cloudinary cloudinary;
	
	@Autowired
	OrderRepository repoorder;
	
	@Autowired
	ReviewRepository reporeview;
	

	@GetMapping("home")
	public String home(Model model , Integer reviewId) {
		
		List<Object[]> reviewlist = reporeview.getrevuser(reviewId);
		model.addAttribute("ListReviews",reviewlist);
		
		List<reviewsEntity> rating = reporeview.findAll();
        model.addAttribute("rating", rating);
        return "UserDashboard";
	}
	
	@GetMapping("usermanage")
	public String usermanage() {
		return "usermanage";
	}
	
	
	@GetMapping("edituser")
	public String edituser(Integer userId ,Model modeluser) {
		Optional<UserEntity> op = repositoryUser.findById(userId);
		if(op.isEmpty()) {
			return "redirect:/listuser";
		}else {
			modeluser.addAttribute("user",op.get());
			return "EditUser";
		}
	
	}
	
	@GetMapping("displayuser")
	public String displayuser() {
		return "displayuser";
	}
	
	@PostMapping("updateuser")
	public String updateuser(UserEntity entityuser , int id , MultipartFile profilePic) {//pcode vhreg type vid 
		
		System.out.println("User ID"+ entityuser.getUserId());//id? db? 

		Optional<UserEntity> op = repositoryUser.findById(id);
		
		if(op.isPresent())
		{
			UserEntity dbuser = op.get(); //pcode vhreg type id userId 
			dbuser.setFirstName(entityuser.getFirstName());  
			dbuser.setLastName(entityuser.getLastName());//setParkingCode(vehicleEntity.getParkingCode());//code 
			//dbVehicle.setVehicleType(vehicleEntity.getVehicleType());//type 
			
			try {
				Map uploadPhoto = cloudinary.uploader().upload(profilePic.getBytes() , ObjectUtils.emptyMap());
				String profilePath = uploadPhoto.get("url").toString();
				dbuser.setProfilePicPath(profilePath);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			repositoryUser.save(dbuser);
		}
		return "redirect:/listuser";
	}
	
	

	@GetMapping("deleteuser")
	public String deleteuser( Integer userId) {
		repositoryUser.deleteById(userId);
		return "redirect:/listuser";
	}
	
	
	
	@GetMapping("viewuser")
	public String viewuser(Integer userId , Model modeluser) {
		System.out.println("ID==>"+ userId );
		Optional<UserEntity> op = repositoryUser.findById(userId);
		if(op.isEmpty()) {
			//not found
		} else {
			//found
			UserEntity user = op.get();
			modeluser.addAttribute("user", user);
		}
		
		return "ViewUser";	
	}
	
	
	@GetMapping("actionboard")
	public String actionboard() {
		return "ActionBoard";
	}
	
//---------------user product---------------------
	

	
	
	@GetMapping("product")
	public String newproduct(Model model) {
//		List<CategoryEntity> categorylisted = repocitorycategory.findAll();
//		model.addAttribute("allCategory", categorylisted);
//		List<SubcategoryEntity> subcategorylisted = repocitorysubcategory.findAll();
//		model.addAttribute("allSubCategory", subcategorylisted);

		List<ProductEntity> prouserlist = repoproduct.findAll();
		model.addAttribute("ListProUser",prouserlist);
		return "Producttocard";//JSP FILE
	}
	
//	@GetMapping("viewmyproduct")
//	public String viewmyproduct(Integer productId, Model model) {
//		//System.out.println("Product-ID"+ productId );
//		//List<Object[]> product = repositoryproduct.getByproductId(productId)
//		//List<Object[]> product = repositoryproduct.getprodCatSubCat(productId);
//		//System.out.println(product);
//		List<ProductEntity> product = repoproduct.findAll();
//		model.addAttribute("productdetail" , product);
//		return "ViewMyProduct";
//	}

	@GetMapping("viewmyproduct")
	public String viewproduct(Integer productId, Model model , HttpSession httpSession) {
		UserEntity user = (UserEntity) httpSession.getAttribute("user");
		System.out.println("ID==>" + productId);
		Optional<ProductEntity> op = repoproduct.findById(productId);
		if (op.isEmpty()) {
			// not found
		} else {
			// found
			ProductEntity mypro = op.get();
			model.addAttribute("viewmyproduct", mypro);
		}

		return "ViewMyProduct";
	}

	
	@GetMapping("profile")
	public String profile(Integer userId , Model model) {
		System.out.println("ID==>"+ userId );
		List<UserEntity> profileuser = repositoryUser.findAll();
		model.addAttribute ("ProfileUser",profileuser);
		
		return "profile";	
	}
	@GetMapping("editmyprofile")
	public String editmyprofile(Integer userId , Model model) {
		System.out.println("ID==>"+ userId );
		List<UserEntity> profileuser = repositoryUser.findAll();
		model.addAttribute("ProfileUser",profileuser);
		
		return "EditMyProfile";	
	}
	
	@PostMapping("updateprofile")
	public String updateprofile(UserEntity entityuser , Integer userId , MultipartFile profilePic) {//pcode vhreg type vid 
		
		System.out.println("User ID"+ entityuser.getUserId());//id? db? 

		Optional<UserEntity> op = repositoryUser.findById(userId);
		
		if(op.isPresent())
		{
			UserEntity dbuser = op.get(); //pcode vhreg type id userId 
			dbuser.setFirstName(entityuser.getFirstName());  
			dbuser.setLastName(entityuser.getLastName());//setParkingCode(vehicleEntity.getParkingCode());//code 
			dbuser.setContactNum(entityuser.getContactNum());//dbVehicle.setVehicleType(vehicleEntity.getVehicleType());//type 
			
			try {
				Map uploadPhoto = cloudinary.uploader().upload(profilePic.getBytes() , ObjectUtils.emptyMap());
				String profilePath = uploadPhoto.get("url").toString();
				dbuser.setProfilePicPath(profilePath);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			repositoryUser.save(dbuser);
		}
		return "redirect:/profile";
	}
	
	
}
	

	
