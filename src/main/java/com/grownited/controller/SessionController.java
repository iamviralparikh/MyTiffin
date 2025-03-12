package com.grownited.controller;

import java.io.IOException;
import java.util.Map;


import java.security.PublicKey;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;
import com.grownited.service.EmailService;

import jakarta.servlet.http.HttpSession;

@Controller

public class SessionController {
	
	
	@Autowired
	UserRepository repositoryUser;
	
	@Autowired
	EmailService emailService;
	
	@Autowired
	PasswordEncoder encodering;
	
	@Autowired
	Cloudinary cloudinary;
	
	
	@GetMapping(value={"/","signup"})
	public String signup() {
		return "signup";
	}
	
	@GetMapping("login")
	public String login() {
		return "login";
	} 
	
	@PostMapping("saveuser")
	public String saveuser(UserEntity EntityUser, MultipartFile profilePic){
// cloud->
		
//		if(profilePic.getOriginalFilename().endsWith(".jpg") || || || ) {
//			
//		}else {
//			//
//			//model 
//			return "Signup";
//		}
		try {
			Map result = cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
			//System.out.println(result);
			System.out.println(result.get("url"));
			EntityUser.setProfilePicPath(result.get("url").toString());
		
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//String passwording = encodering.encode(EntityUser.getPassword());
		//EntityUser.setPassword(passwording);
		//First encryption always in the database
		repositoryUser.save(EntityUser);
		//Second save the database
		//emailService.sendWelcomeMail(EntityUser.getEmail(),EntityUser.getFirstName() );
		//3rd for mail
		
		
		return "login";
	}
	
	@GetMapping("listuser")
	public String listuser(Model modeluser) {
		
		List<UserEntity> userlisted = repositoryUser.findAll();
		
		modeluser.addAttribute("Listuser", userlisted);
		
		return "Listuser";
	}
	

	// open forgetpassword jsp
		@GetMapping("/forgetpassword")
		public String forgetPassword() {
			return "ForgetPassword";
		}

		// submit on forgetpassword ->
		@PostMapping("sendotp")
		public String sendOtp(String email, Model model) {
			// email valid
			Optional<UserEntity> op = repositoryUser.findByEmail(email);
			if (op.isEmpty()) {
				// email invalid
				model.addAttribute("error", "Email not found");
				return "ForgetPassword";
			} else {
				// email valid
				// send mail otp
				// opt generate
				// send mail otp
				String otp = "";
				otp = (int) (Math.random() * 1000000) + "";// 0.25875621458541

				UserEntity user = op.get();
				user.setOtp(otp);
				repositoryUser.save(user);// update otp for user
				emailService.sendOtpForForgetPassword(email, user.getFirstName(), otp);
				return "ChangePassword";

			}
		}

		
		
		@PostMapping("updatepassword")
		public String updatePassword(String email, String password, String otp, Model model) {
			Optional<UserEntity> op = repositoryUser.findByEmail(email);
			if (op.isEmpty()) {
				model.addAttribute("error", "Invalid Data");
				return "ChangePassword";
			} else {
				UserEntity user = op.get();
				if (user.getOtp().equals(otp)) {
					String encPwd = encodering.encode(password);
					user.setPassword(encPwd);
					user.setOtp("");
					repositoryUser.save(user);// update
				} else {

					model.addAttribute("error", "Invalid Data");
					return "ChangePassword";
				}
			}
			model.addAttribute("msg","Password updated");
			return "login";
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
	
	
	
	@PostMapping("/authenticate")
    public String authenticate(String email, String password, Model model, HttpSession session) {
        Optional<UserEntity> userOptional = repositoryUser.findByEmail(email);

        if (userOptional.isPresent()) {
            UserEntity dbUser = userOptional.get();

            // Check if password matches
            if (encodering.matches(password, dbUser.getPassword())) {
                session.setAttribute("user", dbUser);

                if ("ADMIN".equals(dbUser.getRole())) {
                    return "redirect:/admindashboard";
                } else if ("USER".equals(dbUser.getRole())) {
                    return "redirect:/home";
                }
                	else if ("VENDOR".equals(dbUser.getRole())) {
                    return "redirect:/vendordashboard";
                }
                	else if ("DELIVERY".equals(dbUser.getRole())) {
                    return "redirect:/deliverydashboard";
                }
                	else {
                    model.addAttribute("error", "Please Contact the Admin");
                    return "login";
                }
            }
        }

        model.addAttribute("error", "Invalid email or password");
        return "login";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
}
	
	
	
	
	
