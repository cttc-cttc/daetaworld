package kr.co.deataworld.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.entity.EmployeeEntity;
import kr.co.deataworld.util.PageProcess;

@Repository
public class AdminDAOImpl implements AdminDAO {
	private final String nameSpace = "kr.co.deataworld.adminMapper";
	
	@Inject
	SqlSession sql;

	@Override
	public int employeeCnt() throws Exception {
		return sql.selectOne(nameSpace + ".employeeCnt");
	}

	@Override
	public List<EmployeeEntity> employeeList(PageProcess pp) throws Exception {
		return sql.selectList(nameSpace + ".employeeList", pp);
	}

	

	
}
