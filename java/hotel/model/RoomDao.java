package hotel.model;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myRoomDao")
public class RoomDao {

	private String namespace="hotel.model.Room";
	
	@Autowired
	SqlSessionTemplate sst;

	public int insertRoom(Room room) {
		int cnt=sst.insert(namespace+".insertRoom",room);
		return cnt;
	}
}
