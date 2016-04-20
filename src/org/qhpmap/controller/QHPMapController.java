package org.qhpmap.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class QHPMapController {
	 @RequestMapping("/states")
	    public ModelAndView initialize() {
	 
	        String message = "Welcome to QHP States Heat Map!";
	        return new ModelAndView("states", "message", message);
	    }

	 @RequestMapping("/counties")
	  public ModelAndView getCounties() {
			 
	        String message = "Welcome to QHP Counties Heat Map!";
	        return new ModelAndView("counties", "message", message);
	    }

	 @RequestMapping("/twoStates")
	  public ModelAndView getTwoStates() {
			 
	        String message = "Welcome to QHP Counties Heat Map!";
	        return new ModelAndView("twoStates", "message", message);
	    }

}
