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
	public ResumeDTO selectResume(Map<String, Object> map) throws Exception {
		return dao.selectResume(map);
	}


	@Override //수정한 자소서 저장 ajax
	public int resumeUpdate(ResumeDTO resumeDTO) throws Exception {
		return dao.resumeUpdate(resumeDTO);
	}


	@Override //자소서 삭제
	public int resumeDelete(ResumeDTO resumeDTO) throws Exception {
		return dao.resumeDelete(resumeDTO);
	}


	@Override //자소서 저장
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
	
	
	@Override // 공고 디테일 접속시 m_id와 s_number(공고번호) 를 이용해 이미 지원한 공고인지 확인
	public int applyCheck(Map<String, Object> chk) throws Exception {
		return dao.applyCheck(chk);
	}
	

	@Override //대타신청
	public int jobApply(JobApplyDTO jobapplyDTO) throws Exception {
		return dao.jobApply(jobapplyDTO);
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
	
	
	

}
