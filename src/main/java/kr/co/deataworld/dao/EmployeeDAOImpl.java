package kr.co.deataworld.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ResumeDTO;


@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	private final static String NAMESPACE = "kr.co.deataworld.employee";
	
	@Inject
	SqlSession sql;
	
	@Override //내 정보 불러오기 (구직자)
	public MemberDTO myInfo()throws Exception {
		return sql.selectOne(NAMESPACE + ".myInfo");
	}


	@Override //내 정보 수정
	public int myInfoUpdate(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sql.update(NAMESPACE + ".myInfoUpdate",memberDTO);
	}


	@Override //등록된 자소서 목록 불러오기
	public List<ResumeDTO> resumeManagement(String m_id) throws Exception {
		return sql.selectList(NAMESPACE + ".resumeManagement");
	}


	@Override //선택한 자소서 불러오기
	public ResumeDTO selectResume(int i_number) throws Exception {
		return sql.selectOne(NAMESPACE + ".selectResume", i_number);
	}


	@Override //선택한 자소서 수정 ajax
	public int resumeUpdate(ResumeDTO resumeDTO) throws Exception {
		return sql.update(NAMESPACE + ".resumeUpdate", resumeDTO);
	}


	@Override //자소서 삭제하기
	public int resumeDelete(int i_number) throws Exception {
		return sql.delete(NAMESPACE + ".resumeDelete", i_number);
	}


	@Override //자소서 저장
	public int resumeRegister(ResumeDTO resumeDTO) throws Exception {
		return sql.insert(NAMESPACE + ".resumeRegister", resumeDTO);
	}


	@Override //대표 자소서 설정
	public int resumeDefault(ResumeDTO resumeDTO) throws Exception {
		return sql.update(NAMESPACE + ".resumeDefault", resumeDTO);
	}


	@Override //대표 자소서 초기화
	public int resumeDefaultInit(ResumeDTO resumeDTO) throws Exception {
		return sql.update(NAMESPACE + ".resumeDefaultInit", resumeDTO);
	}

	

	


	

}
