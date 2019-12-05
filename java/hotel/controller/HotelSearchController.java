package hotel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hotel.model.Hotel;
import hotel.model.HotelDao;

@Controller
public class HotelSearchController {
	private final String commend = "Search.ho";
	private final String gotoPage = "bigSearch";
	
	@Autowired
	HotelDao hoDao;
	
	
	
	@RequestMapping(commend)
	public String search (@RequestParam("area") String area, 
			@RequestParam("checkin") String checkin,
			@RequestParam("checkout") String checkout,
			@RequestParam("adult") String adult,Model model) {
		
		System.out.println(area + checkin + checkout + adult);
		
		
		
		
		List<Hotel> list = hoDao.selectAll(area);
		System.out.println(list.size());
		model.addAttribute("list",list);
		
		
		return gotoPage;
	}
}
