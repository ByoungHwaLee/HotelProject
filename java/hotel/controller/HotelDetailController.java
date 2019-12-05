package hotel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hotel.model.Hotel;
import hotel.model.HotelDao;

@Controller
public class HotelDetailController {
	private final String commend = "hoDetail.ho";
	private final String getPage = "hoDetail";
	
	
	@Autowired
	HotelDao hoDao;
	
	
	@RequestMapping(commend)
	public String detail(@RequestParam("h_name") String h_name,Model model) {
		System.out.println(h_name);
		
		Hotel hotel = hoDao.detailData(h_name);
		System.out.println(hotel);
		model.addAttribute("hotel",hotel);
		
		return getPage;
	}
}
