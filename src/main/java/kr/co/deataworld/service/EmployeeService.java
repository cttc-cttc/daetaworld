package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.servlet.ModelAndView;

import kr.co.deataworld.dto.BoardDTO;
import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.JobApplyDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ResumeDTO;


public interface EmployeeService {
	//내 정보 불러오기
	public Map<String, Object> myInfo(String m_id)throws Exception;
	
	//내 정보 수정하기
	public int myInfoUpdate(MemberDTO memberDTO)throws Exception;
	
	//등록된 자기소개서 목록 불러오기
	public List<ResumeDTO> resumeManagement(String m_id)throws Exception;
	
	//선택한 자소서 읽기
	public ResumeDTO selectResume(Map<String, Object> map)throws Exception;
	
	//자소서 수정내용 저장 ajax
	public int resumeUpdate(ResumeDTO resumeDTO)throws Exception;
	
	//자소서 삭제
	public int resumeDelete(ResumeDTO resumeDTO)throws Exception;
	
	//자소서 저장
	public int resumeRegister(ResumeDTO resumeDTO)throws Exception;
	
	//자소서 대표 설정
	public int resumeDefault(ResumeDTO resumeDTO)throws Exception;
	
	//자소서 대표 초기화
	public int resumeDefaultInit(ResumeDTO resumeDTO)throws Exception;
	
	// 공고 디테일 접속시 m_id와 s_number(공고번호) 를 이용해 이미 지원한 공고인지 확인
	public int applyCheck(Map<String, Object> chk)throws Exception;
	
	//대타신청
	public int jobApply(JobApplyDTO jobapplyDTO)throws Exception;
	
	//대타 신청시 대표자소서를 보냄
	public int applyIntro(JobApplyDTO jobapplyDTO)throws Exception;
	
	//신청한 공고내역을 불러온다
	public List<Map> pinchHistory(String m_id)throws Exception;
	
	//지원한 대타내역 불러오기
	public List<Map> pinchStatus(String m_id)throws Exception;

	//종료된(완료한) 공고목록 불러오기
	public List<Map> pinchExpired(String m_id)throws Exception;
	
	//주변노예검색을 통해 요청받은 목록 불러오기
	public List<Map> requests(String m_id)throws Exception;
	
	//요청받은 공고 상세정보 보기
	public Map<String, Object> requestList(Map<String, Object> map)throws Exception;
	
	//요청받은 공고 수락
	public int requestYes(JobApplyDTO jobApplyDTO)throws Exception;
	
	//요청받은 공고 거절
	public int requestNo(JobApplyDTO jobApplyDTO) throws Exception;
	
	
	
	
	
	
}
