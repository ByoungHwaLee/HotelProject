package hotel.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

@Component("myHotelDao")
public class HotelDao {

	private String namespace="hotel.model.Hotel";
	
	@Autowired
	SqlSessionTemplate sst;
	
	public int insertHotel(Hotel hotel) {
		int cnt=sst.insert(namespace+".insertHotel",hotel);
		return cnt;
	}
	
	public List<Hotel> getHotelList() {
		List<Hotel> hotelList=sst.selectList(namespace+".getHotelList"); 
		return hotelList;
	}

	public int getTotalCount() {
		int totalCount=sst.selectOne(namespace+".getTotalCount");
		return totalCount;
	}

	public Hotel getHotelOne(int num) {
		Hotel hotel=sst.selectOne(namespace+".getHotelOne",num);
		return hotel;
	}
	
}
