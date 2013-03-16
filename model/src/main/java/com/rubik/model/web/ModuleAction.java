package com.rubik.model.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/module/")
public class ModuleAction {

	private ModelAndView mav = new ModelAndView();
	
	/**
	 * 主页action
	 * @return
	 */
	@RequestMapping("main")
	public ModelAndView main(String type){
		mav.addObject("user", "rubik");
		mav.setViewName(type);
		return mav;
	}
}
