package kr.co.deataworld.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.dto.MemberDTO;


@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	private final static String NAMESPACE = "kr.co.deataworld.employee";
	
	@Inject
	SqlSession sql;
	
	@Override //내 정보 불러오기 (구직자)
	public MemberDTO myInfo()throws Exception {
		return sql.selectOne(NAMESPACE + ".myInfo");
	}


	@Override
	public int m_myInfoUpdate(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAMESPACE + ".m_myInfoUpdate", memberDTO);
	}


	


	

}
