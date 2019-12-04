package member.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;

@Controller
public class MemberLoginController {
	private final String command = "/login.mem";
	private final String getPage = "memberLoginForm";
	private final String goPage = "redirect:/main.jsp";
	
	@Autowired
	private MemberDao memDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String login() {
		return getPage;
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST)
	public ModelAndView login(Member member, HttpServletResponse response,
			HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		Member login = memDao.login(member.getM_email());
		
		System.out.println(member.getM_email());
		
		if(login == null) {
			mav.setViewName(getPage);
			return mav;
		} else {
			session.setAttribute("loginfo", login);
			
			mav.setViewName(goPage);
			
			return mav;
		}
		
	}
}
