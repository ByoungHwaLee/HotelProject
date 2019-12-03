package member.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDao {
	private String namespace = "member.model.Member";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public Member login(String m_email) {
		Member member = sqlSessionTemplate.selectOne(namespace + ".login", m_email);
		
		return member;
	}

	public void registerMem(Member member) {
		sqlSessionTemplate.insert(namespace+".registerMem", member);
	}
}
