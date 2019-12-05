package hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HotelNowController {
	private final String commend = "hotelNow.ho";
	private final String getPage = "hotelNow";
	
	
	@RequestMapping(commend)
	public String now() {
		
		
		return getPage;
	}
}
