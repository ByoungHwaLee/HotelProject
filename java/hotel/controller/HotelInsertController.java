package hotel.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import hotel.model.Hotel;
import hotel.model.HotelDao;
import hotel.model.Room;
import hotel.model.RoomDao;
import seller.model.Seller;



@Controller
public class HotelInsertController {
	
	private final String command="/insert.ho";
	private final String getPage="hotelInsertForm";
	private final String gotoPage="redirect:/selMain.sel";
	
	@Autowired
	private HotelDao hotelDao;
	
	@Autowired
	private RoomDao roomDao;
	
	@Autowired
	ServletContext application;
	
	@RequestMapping(value=command,method=RequestMethod.GET)
	public String insertGet(HttpSession session,Model model) {
		return getPage;
	}
	
	@RequestMapping(value=command,method=RequestMethod.POST)
	public String insertPost(Room rooms, Hotel hotel,
			MultipartHttpServletRequest mpfRequest,
			HttpSession session) {
		
		Seller seller=(Seller)session.getAttribute("loginfo");
		int num=seller.getNum();
		hotel.setSelNum(num);
		
		int roomcnt=0;
		for(int i=0;i<rooms.getR_type().length;i++) {
			String type=rooms.getR_type()[i];
			int price=rooms.getR_price()[i];
			int person=rooms.getR_person()[i];
			int stock=rooms.getR_stock()[i];
			String breakfast=rooms.getR_breakfast()[i];
			String hname=hotel.getH_name();
			
			Room room=new Room(type,price,person,stock,breakfast,hname);
			roomcnt+=roomDao.insertRoom(room);
		}
		System.out.println("객실 등록:" +roomcnt);
		
		String filePath=application.getRealPath("/resources"+hotel.getH_name());
		
		List<MultipartFile> fileList=mpfRequest.getFiles("file");
		
		File file=new File(filePath);
		if(file.exists()==false) {
			file.mkdirs();
		}
		String image="";
		for(int i=0;i<fileList.size();i++) {
			System.out.println(application.getRealPath("/resources"));
			file=new File(filePath+File.separator+fileList.get(i).getOriginalFilename());
			try {
				fileList.get(i).transferTo(file);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			image+=fileList.get(i).getOriginalFilename()+";";
		}
		hotel.setH_image(image);
		int hotelcnt=hotelDao.insertHotel(hotel);
		System.out.println("호텔등록:"+hotelcnt);
		
		return gotoPage;
	}
}
