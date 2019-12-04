package member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import member.model.Member;
import member.model.MemberDao;

@Controller
public class MemberInfoController {
	private final String command = "info.mem";
	private final String command2 = "update.mem";
	private final String command3 = "delete.mem";
	private final String getPage = "memberInfoForm";
	private final String goPage = "main.jsp";
	
	@Autowired
	private MemberDao memDao;
	
	@RequestMapping(command)
	public String info(
			HttpSession session, Model model
			) {
		Member member = (Member) session.getAttribute("loginfo");
		
		model.addAttribute("member", member);
		
		return getPage;
	}
	
	@RequestMapping(command3)
	public String delete(
			@RequestParam(value="m_email", required=true) String m_email
			) {
		
		memDao.delete(m_email);
		
		return goPage;
	}
}
