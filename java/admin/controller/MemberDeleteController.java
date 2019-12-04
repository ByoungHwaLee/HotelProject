package admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import admin.model.AdminDao;

@Controller
public class MemberDeleteController {

	private final String command = "memDelete.ad";
	private final String goPage = "redirect:/memList.ad";
	
	@Autowired
	private AdminDao adDao;
	
	@RequestMapping(command)
	public String deleteMem(
			@RequestParam(value="m_num", required=true) int m_num,
			@RequestParam(value="pageNumber", required=true) int pageNumber) {
		
		adDao.deleteMem(m_num);
		
		return goPage + "?pageNumber=" + pageNumber;
	}
}
