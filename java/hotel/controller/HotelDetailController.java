package hotel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hotel.model.Hotel;
import hotel.model.HotelDao;
import hotel.model.Room;
import hotel.model.RoomDao;
import hotel.model.Search;
import order.model.MainOrder;
import order.model.MainOrderDao;

@Controller
public class HotelDetailController {

	private final String command="/hotelDetail.ho";
	private final String getPage="hotelDetail";
	
	@Autowired
	private HotelDao hotelDao;
	
	@Autowired
	private RoomDao roomDao;
	
	@Autowired
	private MainOrderDao moDao;
	
	@RequestMapping(command)
	public String hotelDetail(@RequestParam("h_num") int h_num,Search search,Model model,@RequestParam(value="scroll",required=false) String scroll) {
		
		Hotel hotel=hotelDao.getHotelOne(h_num);
		List<Room> rooms=roomDao.getRoomList(hotel);
		hotel.setRooms(rooms);
		if(hotel.getH_image()!=null) {
			hotel.setImages(hotel.getH_image().split(";"));
		}
		if(hotel.getH_address1().indexOf("(")!=-1) {
			String address=hotel.getH_address1().substring(0,hotel.getH_address1().indexOf("(")-1);
			hotel.setH_address1(address);
		}
		if(hotel.getH_facilities().length()>2) {
			String facil=hotel.getH_facilities().substring(3);  
			hotel.setH_facilities(facil);	
		}
		
		///////////////////////////////////////////////////////////	
	    

		model.addAttribute("search",search);
		model.addAttribute("hotel",hotel);
		model.addAttribute("rooms",rooms);
		model.addAttribute("scroll", scroll);
		
		
		return getPage;
	}
}
