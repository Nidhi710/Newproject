package com.qeepchat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class QeepController {
	@RequestMapping("/")
	public String getindex(){
		return"index";
	}
	@RequestMapping("/userpage")
	public String user(){
		return"user";
	}
	@RequestMapping("/blogpage")
	public String blog(){
		return"blog";
	}
	@RequestMapping("/eventpage")
	public String event(){
		return"event";
	}
	/*@RequestMapping("/loginpage")
	public String login(){
		return"login";
	}*/
	@RequestMapping("/registrationpage")
	public String registration(){
		return"registration";
	}
}




