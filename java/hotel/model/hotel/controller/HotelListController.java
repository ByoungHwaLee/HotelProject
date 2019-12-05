package hotel.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import hotel.model.Hotel;
import hotel.model.HotelDao;
import hotel.model.Room;
import hotel.model.RoomDao;

@Controller
public class HotelListController {

	private final String command="/Search.ho";
	private final String getPage="hotelList";
	
	@Autowired
	private HotelDao hotelDao;
	
	@Autowired
	private RoomDao roomDao;
	
	@RequestMapping(value=command)
	public String search(HttpServletRequest request,Model model) {
		
		String url=request.getContextPath()+command;
		int totalCount=hotelDao.getTotalCount();
		System.out.println("총 호텔 개수:"+totalCount);
		
		List<Hotel> hotelList=hotelDao.getHotelList();
		for(int i=0;i<hotelList.size();i++) {
			String[] images=hotelList.get(i).getH_image().split(";");
			hotelList.get(i).setImages(images);
			List<Room> roomList=roomDao.getRoomList(hotelList.get(i));
			hotelList.get(i).setRooms(roomList);
		}
		model.addAttribute("hotelList",hotelList);
		
		
		return getPage;
	}
}
