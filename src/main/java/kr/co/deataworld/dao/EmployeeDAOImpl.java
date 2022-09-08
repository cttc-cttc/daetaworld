package kr.co.deataworld.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.entity.EmployeeEntity;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	private final static String NAMESPACE = "kr.co.deataworld.employee";
	
	@Inject
	SqlSession sql;
	
	@Override //내 정보 불러오기 (구직자)
	public EmployeeEntity myInfo()throws Exception {
		return sql.selectOne(NAMESPACE + ".myInfo");
	}

	@Override //닉네임 변경시 중복검사 (구직자)
	public int e_nick(String e_nick) throws Exception {
		return sql.selectOne(NAMESPACE + ".e_nick", e_nick);
	}
	
	


	
//	@Override //내 정보 수정하기 (구직자)
//	public EmployeeEntity myInfoUpdate() {
//		// TODO Auto-generated method stub
//		return sql.update(NAMESPACE + ".myInfoUpdate");
//	}

}
