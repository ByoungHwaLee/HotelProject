package admin.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import seller.model.Seller;
import utility.Paging;

@Component("myAdmin")
public class AdminDao {
	private final String namespace = "admin.model.Admin";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public AdminDao() {
		System.out.println("AdminDao()");
	}
	
		public int getTotalCount(Map<String, String> map) {
		System.out.println("dao.getTotalCount");
		int totalCount= sqlSessionTemplate.selectOne(namespace + ".getTotalCount");
		return totalCount;
	}

	public List<Seller> getSelList(Paging pageInfo, Map<String, String> map) {
		System.out.println("dao.getSetlList");
		RowBounds row = new RowBounds(pageInfo.getOffset(), pageInfo.getLimit());
		List<Seller> selList = sqlSessionTemplate.selectList(namespace + ".getSelList", map, row );
		
		return selList;
	}

	public void deleteSel(int num) {
		sqlSessionTemplate.delete(namespace + ".deleteSel", num);
		
	}

	public void updateSel(int num) {
		sqlSessionTemplate.update(namespace + ".updateSel", num);
		
		
	}

	public Seller selectSel(int num) {
		Seller seller = sqlSessionTemplate.selectOne(namespace + ".selectSel", num);	
		return seller;
	}

	public void updateSelInfo(Seller seller) {
		sqlSessionTemplate.update(namespace + ".updateSelInfo", seller);
	}

	public void insertSel(Seller seller) {
		System.out.println(seller);
//		int cnt = sqlSessionTemplate.insert(namespace + ".insertSel", seller);
		sqlSessionTemplate.insert(namespace + ".insertSel", seller); 

	}
	

	
	
	
	
}
