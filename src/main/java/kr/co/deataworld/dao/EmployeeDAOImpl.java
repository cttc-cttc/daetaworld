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


	@Override //내 정보 수정 ajax
	public int myInfoUpdate(MemberDTO memberDTO) {
		return sql.update(NAMESPACE + ".myInfoUpdate",memberDTO);
	}


	@Override //등록된 자소서 목록 불러오기
	public List<ResumeDTO> resumeManagement(String m_id) throws Exception {
		return sql.selectList(NAMESPACE + ".resumeManagement", m_id);
	}


	@Override //선택한 자소서 불러오기
	public ResumeDTO selectResume(ResumeDTO resumeDTO) throws Exception {
		return sql.selectOne(NAMESPACE + ".selectResume", resumeDTO);
	}


	@Override //선택한 자소서 수정 ajax
	public int resumeUpdate(ResumeDTO resumeDTO) throws Exception {
		return sql.update(NAMESPACE + ".resumeUpdate", resumeDTO);
	}


	@Override //자소서 삭제하기
	public int resumeDelete(ResumeDTO resumeDTO) throws Exception {
		return sql.delete(NAMESPACE + ".resumeDelete", resumeDTO);
	}
	
	
	@Override //등록된 자소서가 있는지 검색
	public List<Map<String, Object>> resumeChk(ResumeDTO resumeDTO) throws Exception {
		return sql.selectList(NAMESPACE + ".resumeChk", resumeDTO);
	}

	@Override //자소서 작성 > 등록된 자소서가 없으면 대표자소서로 설정한다
	public int resumeRegister_1(ResumeDTO resumeDTO) throws Exception {
		return sql.insert(NAMESPACE + ".resumeRegister_1" , resumeDTO);
	}
	
	@Override //자소서 저장 ajax
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

	@Override //대타신청 전 자소서 있는지 확인
	public Map<String, Object> introChk(JobApplyDTO jobapplyDTO) throws Exception {
		return sql.selectOne(NAMESPACE + ".introChk", jobapplyDTO);
	}
	
	@Override //자소서 삭제시 등록된 자소서가 1개(대표자소서)라면 삭제 불가능
	public int introDeleteCheck(String m_id) throws Exception {
		return sql.selectOne(NAMESPACE + ".introDeleteCheck", m_id);
	}


	@Override //자소서 삭제시 등록된 자소서가 1개(대표자소서) 일때 삭제 불가능
	public int defaultIntro_xDel(ResumeDTO resumeDTO) throws Exception {
		return sql.selectOne(NAMESPACE + ".defaultIntro_xDel", resumeDTO);
	}
	
	
	@Override // 공고 디테일 접속시 m_id와 s_number(공고번호) 를 이용해 이미 지원한 공고인지 확인
	public int applyCheck(Map<String, Object> chk) throws Exception {
		return sql.selectOne(NAMESPACE + ".applyCheck", chk);
	}
	

	@Override //대타신청
	public int jobApply(JobApplyDTO jobapplyDTO) throws Exception {
		//신청을 하면 상태를 신청중 으로 바꾼다.
		int a_number = jobapplyDTO.getA_number();
		sql.update(NAMESPACE + ".statusUpdate", a_number);
		return sql.insert(NAMESPACE + ".jobApply", jobapplyDTO);
	}


	@Override //대타신청시 대표 자소서를 보냄
	public int applyIntro(JobApplyDTO jobapplyDTO) throws Exception {
		return sql.update(NAMESPACE + ".applyIntro", jobapplyDTO);
	}


	@Override //신청한 대타내역 불러오기
	public List<Map> pinchHistory(String m_id) throws Exception {
		return sql.selectList(NAMESPACE + ".pinchHistory", m_id);
	}


	@Override //신청한 대타내역 불러오기
	public List<Map> pinchStatus(String m_id) throws Exception {
		return sql.selectList(NAMESPACE + ".pinchStatus", m_id);
	}


	@Override //종료된(완료한) 대타목록 불러오기
	public List<Map> pinchExpired(String m_id) throws Exception {
		return sql.selectList(NAMESPACE + ".pinchExpired", m_id);
	}
	
	
	@Override //주변구직자 검색을 통해 요청받은 목록 불러오기
	public List<Map> requests(String m_id) throws Exception {
		return sql.selectList(NAMESPACE + ".requests", m_id);
	}


	@Override //요청받은 공고 상세정보 보기
	public Map<String, Object> requestList(Map<String, Object> map) throws Exception {
		return sql.selectOne(NAMESPACE + ".requestList", map);
	}


	@Override //요청받은 공고 수락
	public int requestYes(JobApplyDTO jobApplyDTO) throws Exception {
		return sql.update(NAMESPACE + ".requestYes", jobApplyDTO);
	}
	
	@Override //요청받은 공고 거절
	public int requestNo(JobApplyDTO jobApplyDTO) throws Exception {
		return sql.update(NAMESPACE + ".requestNo", jobApplyDTO);
	}

	@Override //완료한 공고 '확인'버튼 클릭시 상태를 변경
	public int pinchChk(Map<String, Object> map) throws Exception{
		return sql.update(NAMESPACE + ".pinchChk", map);	
	}


	@Override //공고 신청 후 (구인자는 수락상태) 수락 선택
	public int apply_o(int ja_number) throws Exception {
		return sql.update(NAMESPACE + ".apply_o", ja_number);
	}

	
	@Override //공고 신청 후 (구인자는 수락상태) 거절 선택
	public int apply_x(int ja_number) throws Exception {
		return sql.update(NAMESPACE + ".apply_x", ja_number);
	}


	@Override //공고 신청 상태일때 지원 취소하기
	public int applyCancel(Map<String, Object> map) throws Exception {
		return sql.update(NAMESPACE + ".applyCancel", map);
	}

	
	@Override //거절했던 공고인지 조회
	public int cancelAdsCheck(JobApplyDTO jobApplyDTO) throws Exception {
		return sql.selectOne(NAMESPACE + ".cancelAdsCheck", jobApplyDTO);
	}
	
	
	@Override // 신청 취소한 공고 재신청하기
	public int reApply(JobApplyDTO jobApplyDTO) throws Exception {
		// 신청을 하면 상태를 신청중 으로 바꾼다.
		int a_number = jobApplyDTO.getA_number();
		sql.update(NAMESPACE + ".statusUpdate", a_number);
		return sql.update(NAMESPACE + ".reApply", jobApplyDTO);
	}


	



	

	


	
	
	
	
	




	

	


	

}
