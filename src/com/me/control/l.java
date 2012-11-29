package com.me.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("l")
public class l {

    @RequestMapping("logon")
    public ModelAndView logon() {
	ModelAndView mod = new ModelAndView();
	mod.setViewName("login");
	return mod;
    }

    @RequestMapping("demo2")
    public ModelAndView demo2() {
	ModelAndView mod = new ModelAndView();
	mod.setViewName("demo2");
	return mod;
    }

}
