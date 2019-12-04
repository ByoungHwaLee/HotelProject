package hotel.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myHotelDao")
public class HotelDao {

	private String namespace="hotel.model.Hotel";
	
	@Autowired
	SqlSessionTemplate sst;
	
	public int insertHotel(Hotel hotel) {
		int cnt=sst.insert(namespace+".insertHotel",hotel);
		return cnt;
	}
	
}
