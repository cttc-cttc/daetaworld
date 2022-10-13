package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import kr.co.deataworld.dao.EmployeeDAO;
import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.JobApplyDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ResumeDTO;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Inject
	EmployeeDAO dao;
	
	@Override //내 정보 불러오기 (구직자)
	public Map<String, Object> myInfo(String m_id) throws Exception {
		return dao.myInfo(m_id);
	}


	@Override //내 정보 수정하기 (구직자)
	public int myInfoUpdate(MemberDTO memberDTO)throws Exception {
		return dao.myInfoUpdate(memberDTO);
	}


	@Override //등록된 자기소개서 목록 불러오기
	public List<ResumeDTO> resumeManagement(String m_id) throws Exception {
		return dao.resumeManagement(m_id);
	}


	@Override //선택한 자소서 불러오기
	public ResumeDTO selectResume(ResumeDTO resumeDTO) throws Exception {
		return dao.selectResume(resumeDTO);
	}


	@Override //수정한 자소서 저장 ajax
	public int resumeUpdate(ResumeDTO resumeDTO) throws Exception {
		return dao.resumeUpdate(resumeDTO);
	}


	@Override //자소서 삭제
	public int resumeDelete(ResumeDTO resumeDTO) throws Exception {
		return dao.resumeDelete(resumeDTO);
	}
	
	@Override //등록된 자소서가 있는지 검색
	public List<Map<String, Object>> resumeChk(ResumeDTO resumeDTO) throws Exception {
		return dao.resumeChk(resumeDTO);
	}
	
	@Override //자소서 작성 > 등록된 자소서가 없으면 대표자소서로 설정한다.
	public int resumeRegister_1(ResumeDTO resumeDTO) throws Exception {
		return dao.resumeRegister_1(resumeDTO);
	}
	

	@Override //자소서 저장 ajax
	public int resumeRegister(ResumeDTO resumeDTO) throws Exception {
		return dao.resumeRegister(resumeDTO);
	}


	@Override //대표 자소서 설정
	public int resumeDefault(ResumeDTO resumeDTO) throws Exception {
		return dao.resumeDefault(resumeDTO);
	}


	@Override //대표 자소서 초기화
	public int resumeDefaultInit(ResumeDTO resumeDTO) throws Exception {
		return dao.resumeDefaultInit(resumeDTO);
	}
	
	@Override //자소서 삭제시 등록된 자소서가 1개(대표자소서)라면 삭제 불가능
	public int introDeleteCheck(String m_id) throws Exception {
		return dao.introDeleteCheck(m_id);
	}


	@Override //자소서 삭제시 등록된 자소서가 1개(대표자소서) 일때 삭제 불가능
	public int defaultIntro_xDel(ResumeDTO resumeDTO) throws Exception {
		return dao.defaultIntro_xDel(resumeDTO);
	}
	
	
	@Override // 공고 디테일 접속시 m_id와 s_number(공고번호) 를 이용해 이미 지원한 공고인지 확인
	public int applyCheck(Map<String, Object> chk) throws Exception {
		return dao.applyCheck(chk);
	}
	

	@Override //대타신청
	public int jobApply(JobApplyDTO jobapplyDTO) throws Exception {
		return dao.jobApply(jobapplyDTO);
	}
	
	@Override //대타 신청 전 자소서가 있나 체크
	public Map<String, Object> introChk(JobApplyDTO jobapplyDTO)throws Exception{
		return dao.introChk(jobapplyDTO);
	}


	@Override //대타신청시 대표 자소서를 보냄
	public int applyIntro(JobApplyDTO jobapplyDTO) throws Exception {
		return dao.applyIntro(jobapplyDTO);
	}


	@Override //대타내역
	public List<Map> pinchHistory(String m_id) throws Exception {
		return dao.pinchHistory(m_id);
	}


	@Override //신청한 대타목록 불러오기
	public List<Map> pinchStatus(String m_id) throws Exception {
		return dao.pinchStatus(m_id);
	}


	@Override //종료된(완료한) 공고목록 불러오기
	public List<Map> pinchExpired(String m_id) throws Exception {
		return dao.pinchExpired(m_id);
	}
	

	@Override //주변노예검색을 통해 요청받은 목록 불러오기
	public List<Map> requests(String m_id) throws Exception {
		return dao.requests(m_id);
	}


	@Override //요청받은 공고 상세정보 보기
	public Map<String, Object> requestList(Map<String, Object> map) throws Exception {
		return dao.requestList(map);
	}

	
	@Override //요청받은 공고 수락
	public int requestYes(JobApplyDTO jobApplyDTO) throws Exception {
		return dao.requestYes(jobApplyDTO);
	}


	@Override //요청받은 공고 거절
	public int requestNo(JobApplyDTO jobApplyDTO) throws Exception {
		return dao.requestNo(jobApplyDTO);
	}


	@Override //완료한 공고 '확인'버튼 클릭시 상태를 변경
	public int pinchChk(Map<String, Object> map) throws Exception {
		return dao.pinchChk(map);
	}


	@Override //공고 신청 후 (구인자는 수락상태) 수락 선택
	public int apply_o(int ja_number) throws Exception {
		return dao.apply_o(ja_number);
	}


	@Override //공고 신청 후 (구인자는 수락상태) 거절 선택
	public int apply_x(int ja_number) throws Exception {
		return dao.apply_x(ja_number);
	}


	@Override //공고 신청 상태일때 지원 취소하기
	public int applyCancel(Map<String, Object> map) throws Exception {
		return dao.applyCancel(map);
	}


	@Override //거절했던 공고인지 조회
	public int cancelAdsCheck(JobApplyDTO jobApplyDTO) throws Exception {
		return dao.cancelAdsCheck(jobApplyDTO);
	}

	
	@Override //신청 취소한 공고 재신청하기
	public int reApply(JobApplyDTO jobApplyDTO) throws Exception {
		return dao.reApply(jobApplyDTO);
	}


	




	
	
	
	

}
