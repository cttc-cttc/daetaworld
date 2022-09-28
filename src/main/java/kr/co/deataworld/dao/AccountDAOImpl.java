package kr.co.deataworld.dao;

import java.util.List;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.dto.MemberDTO;

@Repository
public class AccountDAOImpl implements AccountDAO{
	@Autowired
	SqlSession sql;
	
	String nameSpace = "kr.co.deataworld.accountMapper";

	@Override
	public int m_nickChk(String m_nick) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne(nameSpace + ".m_nickChk", m_nick);
	}
		
	@Override
	public int m_idChk(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne(nameSpace + ".m_idChk", m_id);
	}

	@Override
	public int register(MemberDTO member) {
		// TODO Auto-generated method stub
		sql.insert(nameSpace + ".register", member);
		return sql.insert(nameSpace + ".registerPoint", member);
	}
	
	@Override
	public String getAreaCode(Map<String, String> addrParam) {
		// TODO Auto-generated method stub
		return sql.selectOne(nameSpace + ".getAreaCode", addrParam);
	}

	@Override
	public Map<String, Object> login(Map<String, String> loginInfo) {
		// TODO Auto-generated method stub
		return sql.selectOne(nameSpace + ".login", loginInfo);
	}

	@Override
	public String find_id(String m_name, String m_email) {
		// TODO Auto-generated method stub
		return null;
	}

	
	

//	public String find_id(String m_name, String m_email) {
//		// TODO Auto-generated method stub
//		return sql.selectList(nameSpace + "find_id", m_name, m_email );
//	}
	
	
//	@Override
//	public String find_id(String m_name,String m_email)throws Exception{
//		Map<String,Object> map = new HashMap<String, Object>();
//		map.put("m_name", m_name);
//		map.put("m_email", m_email);
//		.put("memberPw", memberPw);
//		return sqlsession.update("memberMapper.findPw", map);
//	}
	

	
}
