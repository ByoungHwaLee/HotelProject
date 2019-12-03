package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

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
	public String login(Member member, HttpSession session) {
		
		Member login = memDao.login(member.getM_email());
		
		
		if(login == null) {
			
			return getPage;
		} 
		
		return goPage;
	}
}
