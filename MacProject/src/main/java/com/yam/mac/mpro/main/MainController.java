package com.yam.mac.mpro.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("com.yam.mac.mpro.main.mainController")
public class MainController {
	
	private static final Logger log = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value="/index", method = RequestMethod.GET)
	public String index(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		
		req.setAttribute("name", "김성진");
		
		return "mpro/main/index";
	}
	
	

	
	
}
