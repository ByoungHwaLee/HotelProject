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
import hotel.model.Search;

@Controller
public class HotelListController {
	private final String commend = "Search.ho";
	private final String gotoPage = "bigSearch";
	
	@Autowired
	HotelDao hoDao;
	
	@Autowired
	RoomDao roomDao;
	
	@RequestMapping(commend)
	public String search (HttpServletRequest request,
			Search search,
			Model model) {
		
		System.out.println("area:"+search.getArea()+","+"checkin:"+search.getCheckin()+","+"checkout:"+search.getCheckout()+","+"adult:"+search.getAdult()+","
				+"child:"+search.getChild()+","+"room:"+search.getRoom()+","+
				"searchas:"+search.getSearchas()+","+"filterType:"+search.getFilterType() 
				);
		
		int totalCount=hoDao.getTotalCount();
		System.out.println("총 호텔 개수:"+totalCount);
		
		if(search.getFilterType()!=null) {
			String[] filters=search.getFilterType().split(",");
			search.setFilters(filters);
		}
		model.addAttribute("search", search);
			
		List<Hotel> hotelList=hoDao.selectAll(search); 
		System.out.println(hotelList);
		
		for(int i=0;i<hotelList.size();i++) {
			if(hotelList.get(i).getH_image()!=null) {
				String[] images=hotelList.get(i).getH_image().split(";");
				hotelList.get(i).setImages(images);
			}
			List<Room> roomList=roomDao.getRoomList(hotelList.get(i));
			hotelList.get(i).setRooms(roomList);
		}
		
		model.addAttribute("hotelList",hotelList);
		return gotoPage;
	}
}