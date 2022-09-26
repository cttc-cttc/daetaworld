package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.JobApplyDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ResumeDTO;

public interface EmployeeDAO {
	//내 정보 불러오기
	public Map<String, Object> myInfo(String m_id)throws Exception;

	//내 정보 수정하기
	public int myInfoUpdate(MemberDTO memberDTO)throws Exception;
	
	//등록된 자소서 목록 불러오기
	public List<ResumeDTO> resumeManagement(String m_id)throws Exception;
	
	//선택한 자소서 불러오기
	public ResumeDTO selectResume(Map<String, Object> map)throws Exception;
	
	//수정한 자소서 저장 ajax
	public int resumeUpdate(ResumeDTO resumeDTO)throws Exception;

	//자소서 삭제
	public int resumeDelete(ResumeDTO resumeDTO)throws Exception;
	
	//자소서 저장
	public int resumeRegister(ResumeDTO resumeDTO)throws Exception;
	
	//대표 자소서 설정
	public int resumeDefault(ResumeDTO resumeDTO)throws Exception;
	
	//자소서 대표 초기화
	public int resumeDefaultInit(ResumeDTO resumeDTO)throws Exception;
	
	// 공고 디테일 접속시 m_id와 s_number(공고번호) 를 이용해 이미 지원한 공고인지 확인
	public int applyCheck(Map<String, Object> chk)throws Exception;

	//대타신청
	public int jobApply(JobApplyDTO jobapplyDTO)throws Exception;
	
	// 공고 디테일 접속시 m_id와 s_number(공고번호) 를 이용해 이미 지원한 공고인지 확인
	public int applyIntro(JobApplyDTO jobapplyDTO)throws Exception;
	
	//신청한 공고내역을 불러온다
	public List<Map> pinchHistory(String m_id)throws Exception;
	
	//대타내역 불러오기
	public List<Map> pinchStatus(String m_id)throws Exception;

	//종료된(완료한) 공고목록 불러오기
	public List<Map> pinchExpired(String m_id)throws Exception;
	
}
