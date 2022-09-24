package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.JobApplyDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ResumeDTO;


@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	private final static String NAMESPACE = "kr.co.deataworld.employee";
	
	@Inject
	SqlSession sql;
	
	@Override //내 정보 불러오기 (구직자)
	public Map<String, Object> myInfo(String m_id)throws Exception {
		return sql.selectOne(NAMESPACE + ".myInfo", m_id);
	}


	@Override //내 정보 수정
	public int myInfoUpdate(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sql.update(NAMESPACE + ".myInfoUpdate",memberDTO);
	}


	@Override //등록된 자소서 목록 불러오기
	public List<ResumeDTO> resumeManagement(String m_id) throws Exception {
		return sql.selectList(NAMESPACE + ".resumeManagement", m_id);
	}


	@Override //선택한 자소서 불러오기
	public ResumeDTO selectResume(Map<String, Object> map) throws Exception {
		return sql.selectOne(NAMESPACE + ".selectResume", map);
	}


	@Override //선택한 자소서 수정 ajax
	public int resumeUpdate(ResumeDTO resumeDTO) throws Exception {
		return sql.update(NAMESPACE + ".resumeUpdate", resumeDTO);
	}


	@Override //자소서 삭제하기
	public int resumeDelete(ResumeDTO resumeDTO) throws Exception {
		return sql.delete(NAMESPACE + ".resumeDelete", resumeDTO);
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

	@Override // 공고 디테일 접속시 m_id와 s_number(공고번호) 를 이용해 이미 지원한 공고인지 확인
	public int applyCheck(Map<String, Object> chk) throws Exception {
		return sql.selectOne(NAMESPACE + ".applyCheck", chk);
	}

	@Override //대타신청
	public int jobApply(JobApplyDTO jobapplyDTO) throws Exception {
		return sql.insert(NAMESPACE + ".jobApply", jobapplyDTO);
	}


	@Override //대타신청시 대표 자소서를 보냄
	public int applyIntro(JobApplyDTO jobapplyDTO) throws Exception {
		return sql.update(NAMESPACE + ".applyIntro", jobapplyDTO);
	}


	@Override //신청한 대타내역 불러오기
	public List<JobAdsDTO> pinchHistory() throws Exception {
		return sql.selectList(NAMESPACE + ".pinchHistory");
	}


	
	
	
	
	
	

//	@Override //대타내역 불러오기
//	public List<JobAdsDTO> pinchHistory() throws Exception {
//		return sql.selectList(NAMESPACE + ".pinchHistory");
//	}

	
//	@Override //대타내역 가게명 불러오기
//	public String shopName(int s_number) throws Exception {
//		return sql.selectOne(NAMESPACE + ".shopName", s_number);
//	}



	

	


	

}
