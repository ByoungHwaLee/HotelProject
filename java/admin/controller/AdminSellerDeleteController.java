package admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import admin.model.AdminDao;

@Controller
public class AdminSellerDeleteController {

	
	private final String command = "selDelete.ad";
	private final String gotoPage= "redirect:/selList.ad";
	
	@Autowired
	AdminDao adDao;
	

	@RequestMapping(command)
	public String doAction(@RequestParam("num") int num) {	
		adDao.deleteSel(num);
		return gotoPage;
	}
	
	
	
}
