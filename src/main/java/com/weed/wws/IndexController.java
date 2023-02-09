package com.weed.wws;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping(value="/")
	public String welcomPage() {
		return "redirect:/Main.do";
	}
	
	@RequestMapping(value="/Main.do")
	public String b_main() {
		return "b_index";
	}
	
	@RequestMapping(value="/index.do")
	public String main() {
		return "index";	
	}
	
	@RequestMapping(value="/Manager.do")
	public String manager() {
		return "redirect:/contactSelect.do";
	}
	 
	@RequestMapping(value="/Test.do")
	public String test(){
		return "test";
	}
	
	@RequestMapping(value="/Document.do")
	public String document() {
		return "document";
	}
	
	@RequestMapping(value="/AOR.do")
	public String aor() {
		return "aor";
	}
	
	
	@RequestMapping(value="/rt.do")
	public String tr() {
		return "test_result";
	}
	@RequestMapping(value="/Chart.do")
	public String chart() {
		return "chart_test";
	

	}
	@RequestMapping(value="/pop.do")
	public String pop() {
		return "pop";
		
		
	}
	
}
