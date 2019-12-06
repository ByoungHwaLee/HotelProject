package admin.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import member.model.Member;
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

	public int getTotalCountMem(Map<String, String> map) {
		int totalCount = sqlSessionTemplate.selectOne(namespace + ".getTotalCountMem", map);
		
		return totalCount;
	}

	public List<Member> getMemList(Paging pageInfo, Map<String, String> map) {
		RowBounds row = new RowBounds(pageInfo.getOffset(), pageInfo.getLimit());
		List<Member> memList = sqlSessionTemplate.selectList(namespace + ".getMemList", map, row);
		
		return memList;
	}

	public void deleteMem(int m_num) {
		sqlSessionTemplate.delete(namespace + ".deleteMem", m_num);
	}

	public Member updateView(int m_num) {
		Member member = sqlSessionTemplate.selectOne(namespace + ".updateView", m_num);
		
		return member;
	}

	public void updateMem(Member member) {
		sqlSessionTemplate.update(namespace + ".updateMem", member);
	}
	
	
	
}