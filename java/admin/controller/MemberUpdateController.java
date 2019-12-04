package admin.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin.model.AdminDao;
import member.model.Member;

@Controller
public class MemberUpdateController {
	private final String command="/memUpdate.ad";
	private final String getPage="memUpdateForm";
	private final String goPage="redirect:/memList.ad";
	
	@Autowired
	private AdminDao adDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String updateMem(
			@RequestParam(value="m_num", required=true) int m_num,
			@RequestParam(value="pageNumber", required=true) int pageNumber,
			Model model
			) {
		Member member = adDao.updateView(m_num);
		
		model.addAttribute("member", member);
		model.addAttribute("pageNumber", pageNumber);
		
		return getPage;
		
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST)
	public ModelAndView updateMem(
			@Valid Member member, BindingResult result,
			@RequestParam(value="pageNumber", required=true) int pageNumber
			) {
		ModelAndView mav = new ModelAndView();
		
		if(result.hasErrors()) {
			mav.addObject("member", member);
			mav.addObject("pageNumber", pageNumber);
			mav.setViewName(getPage);
			
			return mav;
		}
		
		adDao.updateMem(member);
		
		mav.setViewName(goPage + "?pageNumber=" + pageNumber);
		
		return mav;
	}
}
