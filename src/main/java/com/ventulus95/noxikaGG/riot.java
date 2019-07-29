package com.ventulus95.noxikaGG;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
public class riot {
	
	@Resource(name="printapi")
	printapi p;
	
	
//	@RequestMapping(value="/result", method=RequestMethod.GET)
	public String printResult(Member member ,Model model) {
		System.out.println(member.getSummonerId());
//		p.printResultService(member.getSummonerId());
		
		return "result";
	}
}
