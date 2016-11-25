package com.qeepchat.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.qeepchat.model.User;
import com.qeepchat.service.BlogService;
import com.qeepchat.service.UserService;
@Controller

public class QeepController {
	@Autowired(required=true)
	BlogService blogService;
	@Autowired(required=true)
	UserService userService;
	
	@RequestMapping("/")
	public String getindex(){
		return"index";
	}
		
	
	 @RequestMapping("/blogview{c_id}")
	    public String view(@PathVariable("c_id")int c_id, Model model){
	    	System.out.println("view");
	    	model.addAttribute("blog", this.blogService.getBlogById(c_id));
	    	model.addAttribute("blogdetails", this.blogService.getBlogById(c_id));
	    	return "viewblog";
	    }

	 @RequestMapping(value= "/user/add")
		public String addUser(@ModelAttribute("user") User user ,HttpServletRequest request){
		
			
			MultipartFile img = user.getImg();
			String rootDirectory = request.getSession().getServletContext().getRealPath("/");
			Path path = Paths.get(rootDirectory +  "/resources/images/" + user.getId() + ".jpg");

			if (img != null && !img.isEmpty()) {
				try {
					img.transferTo(new File(path.toString()));
					System.out.println("Image successfully uploaded" + path);
				} catch (Exception ex) {
					ex.printStackTrace();
					throw new RuntimeException("User image saving failed", ex);
				}
			}	
			
			return "redirect:/user";
			}
}





