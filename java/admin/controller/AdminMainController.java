package admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.model.Member;

@Controller
public class AdminMainController {

	private final String command = "main.ad";
	private final String getPage = "adMain";
	private final String goPage = "";

	@RequestMapping(command)
	public String doAction(HttpSession session, HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8");
		
		
		Member loginfo = (Member) session.getAttribute("loginfo");
		String adcheck = "";
		try {
			adcheck = loginfo.getM_email();
		} catch (NullPointerException e) {
			e.printStackTrace();
		}
		if (!adcheck.equals("admin@admin")) {
			try {
				session.invalidate();
				PrintWriter writer = response.getWriter();
				writer.print("<script>alert('잘못된 접근입니다.');</script>");
				writer.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return getPage;
	}
}